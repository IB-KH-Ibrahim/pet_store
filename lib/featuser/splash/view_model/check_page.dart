import 'package:flutter/material.dart';
import 'package:pet/core/routes.dart';
import 'package:pet/core/storage/scure_storage.dart';
import 'package:pet/main.dart';

class CheckPage {
  static Future<void> nextPage() async {
    print (await ScureStorage.getData(value: 'username'));
         await Future.delayed(
      const Duration(seconds: 3),
    );
    if (await ScureStorage.getData(value: 'username') != null) {
      Navigator.pushReplacementNamed(
        navigatorKey.currentContext!,
        AppRoutes.main,
      );
    } else {   Navigator.pushReplacementNamed(
        navigatorKey.currentContext!,
        AppRoutes.login,
      );}
  }
}
