import 'dart:ui';

import 'package:pet/core/model/user_model/parameters_user_model.dart';
import 'package:pet/core/model/user_model/user_model.dart';
import 'package:pet/core/widget/showmessage.dart';
import 'package:pet/featuser/auth/view_model/services/creaete_user.dart';

sealed class Createstate {
  Future<void> execute();
}

class Emptyinsert extends Createstate {
  String item;
  Emptyinsert({required this.item});
  @override
  Future<void> execute() async {
    showmessage("Please enter both $item ", Color.fromARGB(255, 255, 0, 0));
  }
}

class Createseccessful extends Createstate {
  final ParametersUser parametersUser;
  new({required this.parametersUser});
  @override
  Future<void> execute() async {
    await CreateUser.createUser(
      user: UserModel(parametersUser: parametersUser),
    );
  }
}

Future<void> typeinsertcreat(ParametersUser parametesuser) async {
  var ins = (
    username: parametesuser.username,
    firstName: parametesuser.firstName,
    lastName: parametesuser.lastName,
    email: parametesuser.email,
    phone: parametesuser.phone,
    password: parametesuser.password,
  );
  Createstate result = switch (ins) {
    (
      username: "",
      firstName: _,
      lastName: _,
      email: _,
      phone: _,
      password: _,
    ) =>
      Emptyinsert(item: "User Name"),
    (
      username: _,
      firstName: "",
      lastName: _,
      email: _,
      phone: _,
      password: _,
    ) =>
      Emptyinsert(item: "first Name"),
    (
      username: _,
      firstName: _,
      lastName: "",
      email: _,
      phone: _,
      password: _,
    ) =>
      Emptyinsert(item: "Last Name"),
    (
      username: _,
      firstName: _,
      lastName: _,
      email: "",
      phone: _,
      password: _,
    ) =>
      Emptyinsert(item: "Email"),
    (
      username: _,
      firstName: _,
      lastName: _,
      email: _,
      phone: "",
      password: _,
    ) =>
      Emptyinsert(item: "Phone"),
    (
      username: _,
      firstName: _,
      lastName: _,
      email: _,
      phone: _,
      password: "",
    ) =>
      Emptyinsert(item: "Password"),
    (username: _, firstName: _, lastName: _, email: _, phone: _, password: _) =>
      Createseccessful(parametersUser: parametesuser),
  };
  return await result.execute();
}
