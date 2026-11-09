import 'package:flutter/material.dart';
import 'package:pet/core/api/api_http.dart';
import 'package:pet/core/api/api_string.dart';
import 'package:pet/core/routes.dart';
import 'package:pet/core/storage/scure_storage.dart';
import 'package:pet/core/widget/showmessage.dart';
import 'package:pet/main.dart';

class LogOut {
  static Future<void> logOut() async {
    try {
      final rsponse = await ApiHttp.get(
        url: '${ApiString.baseUrl}${ApiString.logout}',
      );
      if (rsponse['code'] == 200) {
        await ScureStorage.logOut();
        Navigator.pushReplacementNamed(
          navigatorKey.currentContext!,
          AppRoutes.splash,
        );
        showmessage('Log Out successful', Color.fromARGB(255, 41, 197, 39));
      } else {
        showmessage('Log Out Failed', Color.fromARGB(255, 197, 39, 39));
      }
    } catch (e) {
      print('Failed to delete account with status code: $e');
      showmessage('Error deleting account', Colors.red);
    }
  }
}
