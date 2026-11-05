import 'package:flutter/material.dart';
import 'package:pet/core/api/api_http.dart';
import 'package:pet/core/api/api_string.dart';
import 'package:pet/core/widget/showmessage.dart';
import 'package:pet/featuser/products/model/pet_model.dart';

class FiendPetById {
  static Future<PetModel?> fiendPet(String id) async {
    try {
      final response = await ApiHttp.get(
        url: '${ApiString.baseUrl}${ApiString.pet}?id=$id',
      );
      showmessage('Found pet', Color.fromARGB(255, 41, 197, 39));
      return PetModel.fromJson(response);
    } catch (e) {
      print('Failed to send data with status code: $e');
      showmessage('Error error', Colors.red);
    }
    return null;
  }
}
