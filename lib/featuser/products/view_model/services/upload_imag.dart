import 'dart:io';

import 'package:flutter/material.dart';
import 'package:pet/core/api/api_http.dart';
import 'package:pet/core/api/api_string.dart';
import 'package:pet/core/widget/showmessage.dart';

class UploadImag {
  static Future<void> uploadImagPet({required String id,required File photo}) async {
    try {
      await ApiHttp.post(
        url: '${ApiString.baseUrl}$id/uploadImage',
        body: {'file': photo},
      );
      showmessage('photo UpLoad successfully', Colors.green);
    } catch (e) {
      print('Error adding pet: $e');
      showmessage('Error adding pet', Colors.red);
    }
  }
  }




