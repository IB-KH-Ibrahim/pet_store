
import 'dart:ui';

import 'package:pet/core/widget/showmessage.dart';

sealed class RequestAuth() {
  void execute();
}

class Loginsacc extends RequestAuth {
  @override
  void execute() {
     showmessage('Invalid password or email.', Color.fromARGB(255, 255, 0, 0));
  }
}

class Loginerror extends RequestAuth {
  @override
  void execute() {
    showmessage('Invalid password or email.', Color.fromARGB(255, 255, 0, 0));
  }
}
RequestAuth typeReques( state, Future<void> logIn) {
  var ins = (email: state.email, password: state.password);
  var result = switch (ins) {
    (email: "user@gmail.com", password: "123") => Loginsacc(),
    (email: _, password: _) => Loginerror(),
  };
  return result;
}

