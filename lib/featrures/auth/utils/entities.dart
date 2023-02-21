class SignUpData {
  String name;
  String email;
  String password;
  String confirmPassword;

  SignUpData(
      {required this.name,
      required this.email,
      required this.confirmPassword,
      required this.password});
}

class SignInData {
  String email;
  String password;

  SignInData({required this.email, required this.password});
}
