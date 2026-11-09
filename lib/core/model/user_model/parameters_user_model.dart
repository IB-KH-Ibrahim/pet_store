class ParametersUser {
   final String username;
  final String firstName;
  final String lastName;
  final String email;
  final String password;
  final String phone;
  final int? id;
  final int? userStatus;
  ParametersUser({
    required this.username,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.password,
    required this.phone,
    this.id,
    this.userStatus,
  });
  factory ParametersUser.fromJson(Map<dynamic, dynamic> json) {
    return ParametersUser(
      username: json['username'] ?? 'null',
      firstName: json['firstName'] ?? 'null',
      lastName: json['lastName'] ?? 'null',
      email: json['email'] ?? 'null',
      password: json['password'] ?? 'null',
      phone: json['phone'] ?? 'null',
      id: json['id']?? 'null',
      userStatus: json['userStatus']?? 'null',
    );
  }
}