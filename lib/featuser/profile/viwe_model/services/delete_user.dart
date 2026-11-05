import 'package:flutter/material.dart';
import 'package:pet/core/api/api_http.dart';
import 'package:pet/core/api/api_string.dart';
import 'package:pet/core/widget/showmessage.dart';

class DeleteUser {

 static Future<void> deleteUser({required String username}) async {
    try {
      await ApiHttp.delete(url: '${ApiString.baseUrl}${ApiString.user}?username=$username');
      showmessage('Account deleted successfully', Color.fromARGB(255, 41, 197, 39));
    } catch (e) {
      print('Failed to delete account with status code: $e');
      showmessage('Error deleting account', Colors.red);
    }

  }




}