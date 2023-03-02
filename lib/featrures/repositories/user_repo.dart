import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:quizz_app/featrures/repositories/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserRepo {
  Future<dynamic> getUserAvatar(String username) async {
    Uri url = Uri.parse('$baseUrl/avatar');

    final response = await http.post(url, body: {"username": username});

    final avatar = json.decode(response.body);

    return avatar;
  }

  Future updateUserPoints(int points) async {
    Uri url = Uri.parse('$baseUrl/users/updatePoints');
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    String? token = prefs.getString('token');

    final body = jsonEncode({'points': points.toString()});
    if (token != null) {
      await http.put(url, body: body, headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': token,
      });
    }

    return;
  }
}
