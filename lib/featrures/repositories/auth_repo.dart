import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:quizz_app/featrures/auth/utils/entities.dart';
import 'package:quizz_app/featrures/repositories/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../auth/models/user_data.dart';

class AuthRepo {
  Future<UserData> signIn(SignInData signInData) async {
    final url = Uri.parse('$baseUrl/auth/login');

    try {
      final response = await http.post(url,
          body: {'email': signInData.email, 'password': signInData.password});

      final Map<String, dynamic> jsonData = json.decode(response.body);
      final SharedPreferences prefs = await SharedPreferences.getInstance();

      prefs.setString('token', jsonData['token']);

      return UserData.fromJson(jsonData);
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<UserData> signUp(SignUpData signUpData) async {
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

      prefs.setString('token', jsonData['token']);

      return UserData.fromJson(jsonData);
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
