import 'package:clean_api_client/clean_api_client.dart';
import 'package:flutter/material.dart';
import 'package:pet/core/widget/showmessage.dart';
import 'package:pet/featuser/authntcaion/data/auth_services.dart';
import 'package:pet/featuser/authntcaion/domain/parameters.dart';

sealed class ValidationLogin() {
  void execute();
}

class Loginsacc extends ValidationLogin {
  final LoginParameters loginParameters;
  new({required this.loginParameters});

  @override
  Future<void> execute() async {
    ApiResponse response = await AuthServices.logIn(
      loginParameters.username,
      loginParameters.password,
    );
    if (response.data['success'] != true) {
      showmessage('Log In Success', Color.fromARGB(255, 41, 197, 39));
    } else {
      showmessage(
        'hhhhhhhhhhhhhhh ',
        Color.fromARGB(255, 255, 0, 0),
      );
    }
  }
}

class Loginerrorpass extends ValidationLogin {
  @override
  void execute() {
    showmessage('Please enter both password ', Color.fromARGB(255, 255, 0, 0));
  }
}

class Loginerroremail extends ValidationLogin {
  @override
  void execute() {
     print("object");
    
    showmessage('Please enter both email.', Color.fromARGB(255, 255, 0, 0));
  }
}

Future<void> authlogin(LoginParameters loginparameters)async {
    print("object");

  var ins = (
    username: loginparameters.username,
    password: loginparameters.password,
  );
  var result = switch (ins) {
    (username: "", password: "") => Loginerroremail(),
    (username: "", password: _) => Loginerroremail(),
    (username: _, password: "") => Loginerrorpass(),
    (username: _, password: _) => Loginsacc(loginParameters: loginparameters),
  };
  print(loginparameters.username);
  return result.execute();
}
