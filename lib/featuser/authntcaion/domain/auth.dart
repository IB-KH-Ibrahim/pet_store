
import 'package:pet/featuser/authntcaion/domain/parameters.dart';
import 'package:pet/featuser/authntcaion/domain/validation_create_account.dart';
import 'package:pet/featuser/authntcaion/domain/validation_login.dart';

class Auth {
  static Future<void> loginValidation(LoginParameters loginparameters) async {
     
   await authlogin(loginparameters);
  }

  static void create(CreateParameters createparameters) {
    ValidationCreateAccount valid = typeinsertcreat(createparameters);
    valid.execute();
  }
}
