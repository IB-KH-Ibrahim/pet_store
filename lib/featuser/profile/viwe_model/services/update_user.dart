
import 'package:flutter/material.dart';
import 'package:pet/core/api/api_http.dart';
import 'package:pet/core/api/api_string.dart';
import 'package:pet/core/model/user_model/user_model.dart';
import 'package:pet/core/widget/showmessage.dart';

class UpdateUser {

  static Future<void> updateUser({required String username,required UserModel user}) async {
    try {
      await ApiHttp.put(url:'${ApiString.baseUrl}${ApiString.user}?username=$username', body: {
        "username": user.parametersUser.username,
        "firstName": user.parametersUser.firstName,
        "lastName": user.parametersUser.lastName,
        "email": user.parametersUser.email,
        "password": user.parametersUser.password,
        "phone": user.parametersUser.phone,
      });
      showmessage('Account updated successfully', Color.fromARGB(255, 41, 197, 39));
    } catch (e) {
      print('Failed to update account with status code: $e');
      showmessage('Error updating account', Colors.red);
    }
  }


}