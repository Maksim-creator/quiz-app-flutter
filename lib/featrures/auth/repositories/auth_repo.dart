import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_device_type/flutter_device_type.dart';
import 'package:http/http.dart' as http;
// import '../../../api/entities.dart';
import '../../../api/entities.dart';
import '../../user/screens/BottomTabsNavigation.dart';
import '../models/user_data.dart';

class AuthRepo {
  String baseUrl = Device.get().isAndroid
      ? 'http://192.168.0.80:7001'
      : 'http://localhost:7001';

  Future<UserData> signIn(SignInData signInData) async {
    final url = Uri.parse('$baseUrl/auth/login');

    try {
      final response = await http.post(url,
          body: {'email': signInData.email, 'password': signInData.password});

      final Map<String, dynamic> jsonData = json.decode(response.body);

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

      return UserData.fromJson(jsonData);
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
