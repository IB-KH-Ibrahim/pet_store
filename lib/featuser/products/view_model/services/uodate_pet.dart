import 'package:flutter/material.dart';
import 'package:pet/core/api/api_http.dart';
import 'package:pet/core/api/api_string.dart';
import 'package:pet/core/widget/showmessage.dart';
import 'package:pet/featuser/products/model/pet_model.dart';

class UpdatePet {
  static Future<void> updatePet({required PetModel petData}) async {
    try{
    await ApiHttp.put(url: '${ApiString.baseUrl}${ApiString.pet}', body: {
      'id': petData.parameters.id,
      'name': petData.parameters.name,
      'photoUrls': petData.parameters.photoUrls,
      'category': petData.parameters.category,
      'tags': petData.parameters.tags,
      'status': petData.parameters.status,
    });
          showmessage('Pet update successfully', Colors.green);

    }catch(e){
                 print('Error adding pet: $e');
      showmessage('Error adding pet', Colors.red);


    }
  }
}
