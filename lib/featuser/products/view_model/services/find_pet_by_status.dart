import 'package:flutter/material.dart';
import 'package:pet/core/api/api_http.dart';
import 'package:pet/core/api/api_string.dart';
import 'package:pet/core/widget/showmessage.dart';
import 'package:pet/featuser/products/model/pet_model.dart';

class FindPetByStatus {
  static Future<PetModel?> findPet({required String status}) async {
    try {
      PetModel respons = await ApiHttp.get(
        url: '${ApiString.baseUrl}${ApiString.findPetByStatus}',
        body: {'status': status},
      );
      showmessage('Pet find Pet successfully', Colors.green);
      return respons;
    } catch (e) {
      print('Error adding pet: $e');
      showmessage('Error adding pet', Colors.red);
    }
      return null;
  }
}
