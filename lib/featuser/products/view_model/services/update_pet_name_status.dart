import 'package:flutter/material.dart';
import 'package:pet/core/api/api_http.dart';
import 'package:pet/core/api/api_string.dart';
import 'package:pet/core/widget/showmessage.dart';

class UpdatePetName {
  static Future<void> updatePet(String id, String newName, String status) async {
    try {
      await ApiHttp.post(
        url: '${ApiString.baseUrl}${ApiString.pet}$id',
        body: {'name': newName, 'status': status},
        token: 'your_auth_token_here',
      );
      showmessage('Pet name updated successfully', Colors.green);
    } catch (e) {
      print('Error updating pet name: $e');
          showmessage('Error error', Colors.red);
    }

  }
}

