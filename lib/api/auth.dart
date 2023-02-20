import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_device_type/flutter_device_type.dart';
import 'package:http/http.dart' as http;
import 'package:quizz_app/utils/toast.dart';
import '../featrures/user/screens/BottomTabsNavigation.dart';
import './entities.dart';

class AuthApi {
  String baseUrl = Device.get().isAndroid
      ? 'http://192.168.0.80:7001'
      : 'http://localhost:7001';

  Future signIn(context, SignInData signInData) async {
    final url = Uri.parse('$baseUrl/auth/login');

    final response = await http.post(url,
        body: {'email': signInData.email, 'password': signInData.password});

    final Map<String, dynamic> data = json.decode(response.body);

    if (data.containsKey('email')) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const BottomTabs()),
      );
    } else {
      showToastMessage(data['message'], context, isError: true);
    }
  }

  Future signUp(context, SignUpData signUpData) async {
    final url = Uri.parse('$baseUrl/auth/registration');
    final response = await http.post(url, body: {
      'email': signUpData.email,
      'name': signUpData.name,
      'password': signUpData.password,
      'confirmPassword': signUpData.confirmPassword
    });

    if (response.body.isNotEmpty) {
      final Map<String, dynamic> data = json.decode(response.body);

      if (data.containsKey('email')) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const BottomTabs()),
        );
      } else {
        showToastMessage(data['message'], context, isError: true);
      }
    }
  }
}
