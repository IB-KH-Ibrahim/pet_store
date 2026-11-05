import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiHttp {
 static Future<dynamic> get({required String url,String? token,Map<String, String>? body}) async {
    Map<String, String> headers = {};
    if (token != null) {
      headers['Authorization'] = 'Bearer $token';
    }
    final http.Response response = await http.get(Uri.parse(url), headers: headers );
    if(response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('${response.statusCode}');
    }
  }
  static Future<dynamic> post({required String url, dynamic body,String? token}) async {
    Map<String, String> headers = { 'Content-Type':'application/json'};
    if (token != null) {
      headers['Authorization'] = 'Bearer $token';
    }
    final http.Response response = await http.post(Uri.parse(url), headers: headers, body: jsonEncode(body));
    if(response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('${response.statusCode}');
    }
  }
  static Future<dynamic> put({required String url, Map<String, dynamic>? body,String? token}) async {
    Map<String, String> headers = {};
    if (token != null) {
      headers['Authorization'] = 'Bearer $token';
    }
    final http.Response response = await http.put(Uri.parse(url), headers: headers, body: jsonEncode(body));
    if(response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to update data with status code: ${response.statusCode} and body: ${response.body}');
    }
  }
  static Future<dynamic> delete({required String url,String? token,String? api_key}) async {
    Map<String, String> headers = {};
    if (token != null) {
      headers['Authorization'] = 'Bearer $token';
    }
    if (api_key != null) {
      headers['X-API-Key'] = api_key;
    }
    final http.Response response = await http.delete(Uri.parse(url), headers: headers);
   if(response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to update field data with status code: ${response.statusCode} and body: ${response.body}');
    }
  }



}
