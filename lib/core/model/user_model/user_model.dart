
import 'package:pet/core/model/user_model/parameters_user_model.dart';

class UserModel {
  final ParametersUser parametersUser;
  UserModel({
    required this.parametersUser,
  });
  factory UserModel.fromJson(Map<dynamic, dynamic> jsonData) {
    return UserModel(
      parametersUser: ParametersUser.fromJson(jsonData),
    );
  }
}