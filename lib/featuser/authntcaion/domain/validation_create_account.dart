import 'dart:ui';

import 'package:pet/core/widget/showmessage.dart';
import 'package:pet/featuser/authntcaion/domain/parameters.dart';

sealed class ValidationCreateAccount {
  void execute();
}

class Emptyinsert extends ValidationCreateAccount {
  String item;
  Emptyinsert({required this.item});
  @override
  int execute() {
    showmessage("Please enter both $item ", Color.fromARGB(255, 255, 0, 0));
    return 1;
  }
}

class Createseccessful extends ValidationCreateAccount {
  @override
  int execute() {
    return 0;
  }
}

class Createerrorpassword extends ValidationCreateAccount {
  @override
  int execute() {
    showmessage("passwords do not match", Color.fromARGB(255, 255, 0, 0));
    return 1;
  }
}

ValidationCreateAccount typeinsertcreat(CreateParameters createparameters) {
  var ins = (
    username: createparameters.username,
    firstname: createparameters.firstname,
    lastname: createparameters.lastname,
    email: createparameters.email,
    phone: createparameters.phone,
    pasword: createparameters.password,
    repassword: createparameters.repassword,
  );
  ValidationCreateAccount result = switch (ins) {
    (
      username: "",
      firstname: _,
      lastname: _,
      email: _,
      phone: _,
      pasword: _,
      repassword: _,
    ) =>
      Emptyinsert(item: "user name"),
    (
      username: _,
      firstname: "",
      lastname: _,
      email: _,
      phone: _,
      pasword: _,
      repassword: _,
    ) =>
      Emptyinsert(item: "first name"),
    (
      username: _,
      firstname: _,
      lastname: "",
      email: _,
      phone: _,
      pasword: _,
      repassword: _,
    ) =>
      Emptyinsert(item: "last name"),
    (
      username: _,
      firstname: _,
      lastname: _,
      email: "",
      phone: _,
      pasword: _,
      repassword: _,
    ) =>
      Emptyinsert(item: "email"),
    (
      username: _,
      firstname: _,
      lastname: _,
      email: _,
      phone: "",
      pasword: _,
      repassword: _,
    ) =>
      Emptyinsert(item: "phone"),
    (
      username: _,
      firstname: _,
      lastname: _,
      email: _,
      phone: _,
      pasword: "",
      repassword: _,
    ) =>
      Emptyinsert(item: "phone"),
    (
      username: _,
      firstname: _,
      lastname: _,
      email: _,
      phone: _,
      pasword: _,
      repassword: "",
    ) =>
      Emptyinsert(item: "confirm password"),

    (
      username: _,
      firstname: _,
      lastname: _,
      email: _,
      phone: _,
      pasword: var password,
      repassword: var repassword,
    )
        when (password != repassword) =>
      Createerrorpassword(),

    (
      username: _,
      firstname: _,
      lastname: _,
      email: _,
      phone: _,
      pasword: _,
      repassword: _,
    ) =>
      Createseccessful(),
  };
  return result;
}
