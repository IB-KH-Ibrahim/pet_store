import 'package:flutter/material.dart';
import 'package:pet/core/api/api_http.dart';
import 'package:pet/core/api/api_string.dart';
import 'package:pet/core/widget/showmessage.dart';
import 'package:pet/featuser/products/model/pet_model.dart';

class AddPet {
  static Future<void> addPet({required PetModel petData}) async {
    try {
      await ApiHttp.post(
        url: '${ApiString.baseUrl}${ApiString.pet}',
        body: {
          'id': petData.parameters.id,
          'name': petData.parameters.name,
          'photoUrls': petData.parameters.photoUrls,
          'category': petData.parameters.category,
          'tags': petData.parameters.tags,
          'status': petData.parameters.status,
        },
      );
      showmessage('Pet added successfully', Colors.green);
    } on Exception catch (e) {
      print('Error adding pet: $e');
      showmessage('Error adding pet', Colors.red);
    }
  }
}
