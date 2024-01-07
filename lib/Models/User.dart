class User {

  final String name;
  final String email;
  final String phone;
  final String? password;

  User({
    required this.name,
    required this.email,
    required this.phone,
    this.password
  });

}