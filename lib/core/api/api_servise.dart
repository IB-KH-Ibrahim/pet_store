import 'package:clean_api_client/clean_api_client.dart';
import 'package:pet/core/api/api_string.dart';

class ApiServise {
  final ApiClient api = ApiClient(baseUrl: ApiString.baseUrl);

  Future<ApiResponse<dynamic>> getData(String url,Map<String,dynamic> queryparameters) async {
    print("response");
   return await api.get(url,queryParameters: queryparameters);
  }

  Future<ApiResponse<dynamic>> sendData(String url, Map body) async {
    return await api.post(url, body: body);
  }

  Future<void> upDateDate(String url, int uid, Map body) async {
    await api.put("$url /$uid", body: body);
  }

  Future<void> upDateFildData(String url, int uid, Map body) async {
    await api.patch("$url /$uid", body: body);
  }

  Future<void> deleteData(String url, int uid) async {
    await api.delete(url, body: uid);
  }

  Future<void> setToken({required String accessToken}) async {
    api.setToken(accessToken);
  }
}
