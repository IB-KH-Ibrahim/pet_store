import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:pet/core/api/api_http.dart';
import 'package:pet/core/api/api_string.dart';
import 'package:pet/core/routes.dart';
import 'package:pet/core/storage/scure_storage.dart';
import 'package:pet/core/widget/showmessage.dart';
import 'package:pet/main.dart';

class DeleteUser {
  static Future<void> deleteUser() async {
    final Future<String?> username = ScureStorage.getData(value: 'username');

    try {
      final response = await ApiHttp.delete(
        url: '${ApiString.baseUrl}${ApiString.user}/$username',
      );
      if (response['code'] == 200) {
        Navigator.pushReplacementNamed(
          navigatorKey.currentContext!,
          AppRoutes.splash,
        );
        showmessage(
          'Account deleted successfully',
          Color.fromARGB(255, 41, 197, 39),
        );
      } else {showmessage('Error deleting account', Colors.red);}
    } catch (e) {
      print('Failed to delete account with status code: $e');
      showmessage('Error deleting account', Colors.red);
    }
  }
}
