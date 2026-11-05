import 'package:flutter/material.dart';
import 'package:pet/core/api/api_http.dart';
import 'package:pet/core/api/api_string.dart';
import 'package:pet/core/model/user_model/user_model.dart';
import 'package:pet/core/widget/showmessage.dart';

class GetUser {
  static Future<UserModel?> getUser(String username) async {
    try {
      final response = await ApiHttp.get(url: '${ApiString.baseUrl}${ApiString.user}?username=$username');
      return UserModel.fromJson(response);
    } catch (e) {
      print('Failed to retrieve user data with status code: $e');
        showmessage('Error error', Colors.red);
    }
    return null;
  }
}