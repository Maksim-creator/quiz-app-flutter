class UserData {
  String email;
  String token;
  String name;
  dynamic data;
  String avatar;

  UserData(
      {required this.email,
      required this.name,
      required this.token,
      required this.data,
      required this.avatar});
}

class UserGameData {
  int level;
  int totalExperience;
  int rank;
  int balance;

  UserGameData(
      {required this.balance,
      required this.level,
      required this.rank,
      required this.totalExperience});
}

class Error {
  int statusCode;
  String message;

  Error({required this.message, required this.statusCode});
}

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