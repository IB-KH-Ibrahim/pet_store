import 'package:flutter/material.dart';
import 'package:pet/core/widget/showmessage.dart';
import 'package:pet/featuser/auth/view_model/services/login.dart';

sealed class Loginstate() {
 Future <void> execute();
}

class Loginsacc extends Loginstate {
  final String userName;
  final String password;
  new({required this.userName, required this.password});
  @override
 Future<void> execute()async {
   await Login.login(username: userName, password: password);
  }
}

class Loginerror extends Loginstate {
  @override
  Future<void> execute() async {
    showmessage('Invalid password or email.', Color.fromARGB(255, 255, 0, 0));
  }
}

class Loginerrorpass extends Loginstate {
  @override
  Future<void> execute() async {
    showmessage('Please enter both password ', Color.fromARGB(255, 255, 0, 0));
  }
}

class Loginerroremail extends Loginstate {
  @override
  Future<void> execute() async {
    showmessage('Please enter both email.', Color.fromARGB(255, 255, 0, 0));
  }
}

Future<void> typeinsertlogin({required String userName,required String password}) async {
  var ins = (email: userName, password: password);
  var result = switch (ins) {
    (email: "", password: _) => Loginerroremail(),
    (email: _, password: "") => Loginerrorpass(),
    (email: _, password: _) => Loginsacc(userName: userName, password: password),
  };
  return await result.execute();
}
