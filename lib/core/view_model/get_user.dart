import 'package:flutter/material.dart';
import 'package:pet/core/api/api_http.dart';
import 'package:pet/core/api/api_string.dart';
import 'package:pet/core/model/user_model/user_model.dart';
import 'package:pet/core/storage/scure_storage.dart';
import 'package:pet/core/widget/showmessage.dart';

class GetUser {
  static Future<UserModel?> getUser() async {
    try {
      final username = await ScureStorage.getData(value: 'username');
      if (username == null) {
        return null;
      }
      final response = await ApiHttp.get(
        url: '${ApiString.baseUrl}${ApiString.user}/$username',
      );

      if (response != null && response['id'] != null) {
        return UserModel.fromJson(response);
      } else {
        showmessage('User Not Found', const Color.fromARGB(255, 244, 181, 54));
      }
    } catch (e) {
      throw Exception(e);
    }
    return null;
  }
}
