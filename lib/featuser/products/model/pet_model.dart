
import 'package:pet/featuser/products/model/parameters_pet.dart';

class PetModel {
final PetParameters parameters;

  PetModel({
    required this.parameters,
  });
  factory PetModel.fromJson(Map<String, dynamic> json) {
    return PetModel(
      parameters: PetParameters.fromJson(json),
    );
  }

}

