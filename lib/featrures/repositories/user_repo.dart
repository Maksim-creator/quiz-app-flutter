import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:quizz_app/featrures/repositories/constants.dart';
import 'package:quizz_app/featrures/user/models/userQuizData.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../quizzes/models/quiz.dart';
import '../user/models/badge.dart';

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

  Future<List<Badge>> getUserBadges() async {
    Uri url = Uri.parse('$baseUrl/badges');
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    String? token = prefs.getString('token');

    if (token != null) {
      http.Response response = await http.get(url, headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': token,
      });

      final List<dynamic> data = jsonDecode(response.body);

      List<Badge> badges = data.map((e) => Badge.fromJson(e)).toList();

      return badges;
    }

    return [];
  }

  Future postCompletedQuiz({required CompletedQuiz completedQuiz}) async {
    Uri url = Uri.parse('$baseUrl/user/updateUserQuizData');

    final SharedPreferences prefs = await SharedPreferences.getInstance();

    String? token = prefs.getString('token');

    if (token != null) {
      final body = jsonEncode({'completedQuiz': completedQuiz});

      await http.post(url, body: body, headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': token,
      });
    }
  }

  Future<UserQuizData> getUserQuizData() async {
    Uri url = Uri.parse('$baseUrl/user/getUserQuizData');

    final SharedPreferences prefs = await SharedPreferences.getInstance();

    String? token = prefs.getString('token');
    print(token);
    if (token != null) {
      http.Response response = await http.get(url, headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': token,
      });
      final dynamic data = jsonDecode(response.body);

      UserQuizData quizData = UserQuizData.fromJson(data);
      print(quizData);
      return quizData;
    }

    return const UserQuizData(
        totalPlayedQuizzes: 0,
        createdQuizzes: 0,
        totalQuizzes: 0,
        favoriteTopic: '',
        averageCompletion: 0,
        quizzesWon: 0,
        chartData: []);
  }
}
