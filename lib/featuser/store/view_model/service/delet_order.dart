import 'package:flutter/material.dart';
import 'package:pet/core/api/api_http.dart';
import 'package:pet/core/api/api_string.dart';
import 'package:pet/core/widget/showmessage.dart';

class DeletOrder {
  static Future<void> deletOrder({required String id}) async {
    try {
      await ApiHttp.delete(url: '${ApiString.stor}$id');
      showmessage('Pet deleted successfully', Colors.green);
    } catch (e) {
      print('Error deleting pet: $e');
      showmessage('Error deleting order', Colors.red);
    }
  }
}
