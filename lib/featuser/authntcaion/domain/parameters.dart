class CreateParameters {
  final String username, firstname, lastname, email, password, phone,repassword;

  new({
    required this.username,
    required this.firstname,
    required this.lastname,
    required this.email,
    required this.password,
    required this.repassword,
    required this.phone,
  });
}

class LoginParameters {
  final String username, password;

  new({required this.username, required this.password});
}
