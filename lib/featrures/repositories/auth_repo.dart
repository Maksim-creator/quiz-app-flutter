import 'dart:convert';
import 'dart:io';

import 'package:either_dart/either.dart';
import 'package:http/http.dart' as http;
import 'package:quizz_app/featrures/auth/utils/entities.dart';
import 'package:quizz_app/featrures/repositories/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../auth/models/user_data.dart';

typedef EitherData<T> = Future<Either<String, T>>;

class AuthRepo {
  EitherData<UserData> signIn(SignInData signInData) async {
    final url = Uri.parse('$baseUrl/auth/login');

    try {
      final response = await http.post(url,
          body: {'email': signInData.email, 'password': signInData.password});

      final Map<String, dynamic> jsonData = json.decode(response.body);

      final SharedPreferences prefs = await SharedPreferences.getInstance();

      if (response.statusCode >= 400 && response.statusCode < 500) {
        return Left(jsonData['message']);
      } else {
        prefs.setString('token', jsonData['token']);

        return Right(UserData.fromJson(jsonData));
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  EitherData<UserData> signUp(SignUpData signUpData) async {
    final url = Uri.parse('$baseUrl/auth/registration');

    try {
      final response = await http.post(url, body: {
        'email': signUpData.email,
        'name': signUpData.name,
        'password': signUpData.password,
        'confirmPassword': signUpData.confirmPassword
      });

      final Map<String, dynamic> jsonData = json.decode(response.body);
      final SharedPreferences prefs = await SharedPreferences.getInstance();

      if (response.statusCode >= 400 && response.statusCode < 500) {
        return Left(jsonData['message']);
      } else {
        prefs.setString('token', jsonData['token']);

        return Right(UserData.fromJson(jsonData));
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future uploadUserAvatar(File avatar) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    String? token = prefs.getString('token');

    if (token != null) {
      http.MultipartRequest request =
          http.MultipartRequest('POST', Uri.parse('$baseUrl/users/upload'));
      request.headers['authorization'] = token;

      request.files.add(http.MultipartFile(
          'file',
          File(avatar.path).readAsBytes().asStream(),
          File(avatar.path).lengthSync(),
          filename: avatar.path.split("/").last));
      http.StreamedResponse response = await request.send();

      http.Response json = await http.Response.fromStream(response);
      Map<String, dynamic> newAvatar = jsonDecode(json.body);

      return newAvatar['data'];
    }
  }
}
