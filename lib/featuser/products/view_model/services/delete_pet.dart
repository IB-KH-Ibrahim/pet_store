import 'package:flutter/material.dart';
import 'package:pet/core/api/api_http.dart';
import 'package:pet/core/api/api_string.dart';
import 'package:pet/core/widget/showmessage.dart';

class DeletePet {
  static Future<void> deletePet({ required String id, String? api_key}) async {
    try {
      await ApiHttp.delete(
        url: '${ApiString.baseUrl}${ApiString.pet}$id',
        api_key: api_key,
      );
      showmessage('Pet deleted successfully', Colors.green);
    } on Exception catch (e) {
      print('Error deleting pet: $e');
      showmessage('Error deleting pet', Colors.red);
    }
  }
}