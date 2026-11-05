import 'package:flutter/material.dart';
import 'package:pet/core/api/api_http.dart';
import 'package:pet/core/api/api_string.dart';
import 'package:pet/core/routes.dart';
import 'package:pet/core/widget/showmessage.dart';
import 'package:pet/main.dart';

class Login {
  static Future<void> login({required String username, required String password}) async {
    try {
     await ApiHttp.get(url: '${ApiString.baseUrl}${ApiString.login}?username=$username&password=$password');
              showmessage('Login successful', Color.fromARGB(255, 41, 197, 39));
      Navigator.pushReplacementNamed(navigatorKey.currentContext!,AppRoutes.main);

    } catch (e) {
      print('Failed to send data with status code: $e');
      showmessage('Error error', Colors.red);
    }
  }





}