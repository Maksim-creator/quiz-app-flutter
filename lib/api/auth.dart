import 'dart:convert';
import 'package:http/http.dart' as http;

class AuthApi {
  String baseUrl = 'http://localhost:7001';

  Future<Map<String, dynamic>> signIn(String email, String password) async {
    final url = Uri.parse('$baseUrl/auth/login');
    final response =
        await http.post(url, body: {'email': email, 'password': password});

    final Map<String, dynamic> data = json.decode(response.body);

    return data;
  }
}
