import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:pet/core/api/api_http.dart';
import 'package:pet/core/api/api_string.dart';
import 'package:pet/core/widget/showmessage.dart';

class CreateListUser {


  static Future<void> createListUser(Array listUser) async {
    try {
    await ApiHttp.post(url: ApiString.createAccountWithArray, body: listUser);
    showmessage('List of users created successfully', Color.fromARGB(255, 41, 197, 39));
    print('List of users created successfully');
    } catch (e) {
      print('Failed to send data with status code: $e');
    }
  }
}
