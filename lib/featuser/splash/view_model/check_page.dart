import 'package:flutter/material.dart';
import 'package:pet/core/routes.dart';
import 'package:pet/core/storage/scure_storage.dart';
import 'package:pet/core/view_model/get_user.dart';
import 'package:pet/core/widget/showmessage.dart';
import 'package:pet/main.dart';

class CheckPage {
  static Future<void> nextPage() async {
    while (true) {
      try {
        print("object");
        await Future.delayed(const Duration(seconds: 3));
        if (await GetUser.getUser() != null &&
            await ScureStorage.getData(value: 'username') != null) {
          Navigator.pushReplacementNamed(
            navigatorKey.currentContext!,
            AppRoutes.main,
          );
          return;
        } else {
          Navigator.pushReplacementNamed(
            navigatorKey.currentContext!,
            AppRoutes.login,
          );
          return;
        }
      } catch (e) {
        if (e == ' Exception: Exception: 404') {
          Navigator.pushReplacementNamed(
            navigatorKey.currentContext!,
            AppRoutes.login,
          );
          return;
        }
        print(e);
        showmessage(
          'No internet, reconnecting......',
          Color.fromARGB(255, 225, 164, 67),
        );
      }
    }
  }
}
