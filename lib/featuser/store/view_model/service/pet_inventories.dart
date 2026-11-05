import 'package:flutter/material.dart';
import 'package:pet/core/api/api_http.dart';
import 'package:pet/core/api/api_string.dart';
import 'package:pet/core/widget/showmessage.dart';

class PetInventories {
  static Future<Map<dynamic, int>?> petInventories() async {
    try {
      final response = await ApiHttp.get(url: '${ApiString.baseUrl}${ApiString.storInventory}');
      showmessage('Found Order', Color.fromARGB(255, 41, 197, 39));
      return (response);
    } catch (e) {
      print('Failed to send data with status code: $e');
      showmessage('Error error', Colors.red);
      return null;
    }
  }
}
