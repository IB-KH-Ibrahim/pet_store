import 'package:flutter/material.dart';
import 'package:pet/core/api/api_http.dart';
import 'package:pet/core/api/api_string.dart';
import 'package:pet/core/model/user_model/user_model.dart';
import 'package:pet/core/routes.dart';
import 'package:pet/core/widget/showmessage.dart';
import 'package:pet/main.dart';

class CreateUser {
 static Future<void> createUser({required UserModel user}) async {
 try {
    await ApiHttp.post(url:'${ApiString.baseUrl}${ApiString.user}', body: {
      "id":0,
    "username": user.parametersUser.username,
    "firstName": user.parametersUser.firstName,
    "lastName": user.parametersUser.lastName,
    "email": user.parametersUser.email,
    "password": user.parametersUser.password,
    "phone": user.parametersUser.phone,
    "userStatus":0,
  });
          showmessage('Account created successfully please login', Color.fromARGB(255, 41, 197, 39));
      Navigator.pushReplacementNamed(navigatorKey.currentContext!,AppRoutes.login);
 }catch (e) {
    print('Failed to send data with status code: $e ');
    showmessage('Error error', Colors.red);
  }
 }
}
