import 'package:flutter/material.dart';
import 'package:pet/core/api/api_http.dart';
import 'package:pet/core/api/api_string.dart';
import 'package:pet/core/model/user_model/user_model.dart';
import 'package:pet/core/storage/scure_storage.dart';
import 'package:pet/core/widget/showmessage.dart';

class GetUser {
  static Future<UserModel?> getUser() async {
    try {
      final username = ScureStorage.getData(value: 'username');
      final response = await ApiHttp.get(
        url: '${ApiString.baseUrl}${ApiString.user}?username=$username',
      );
      if (response['code'] == 200) {
        return UserModel.fromJson(response);
      }else{showmessage('Error error', Colors.red);}
    } catch (e) {
      print('Failed to retrieve user data with status code: $e');
      showmessage('Error error', Colors.red);
    }
    return null;
  }
}
