import 'dart:convert';
import 'package:either_dart/either.dart';
import 'package:http/http.dart' as http;
import 'package:quizz_app/featrures/repositories/auth_repo.dart';
import 'package:quizz_app/featrures/repositories/constants.dart';
import 'package:quizz_app/featrures/user/models/RecentQuiz/recentQuiz.dart';
import 'package:quizz_app/featrures/user/models/userQuizData.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../auth/models/user_data.dart';
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

    if (token != null) {
      http.Response response = await http.get(url, headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': token,
      });
      final dynamic data = jsonDecode(response.body);

      UserQuizData quizData = UserQuizData.fromJson(data);

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

  EitherData<RecentQuiz> getRecentQuiz() async {
    Uri url = Uri.parse('$baseUrl/user/recentQuiz');

    final SharedPreferences prefs = await SharedPreferences.getInstance();

    String? token = prefs.getString('token');

    if (token != null) {
      http.Response response = await http.get(url, headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': token,
      });
      final Map<String, dynamic> jsonData = jsonDecode(response.body);

      if (response.statusCode >= 400 && response.statusCode < 500) {
        return Left(jsonData['message']);
      } else {
        return Right(RecentQuiz.fromJson(jsonData));
      }
    }

    return const Left('Unauthorized');
  }

  EitherData<RecentQuiz> postRecentQuiz(RecentQuiz recentQuiz) async {
    Uri url = Uri.parse('$baseUrl/user/recentQuiz');

    final SharedPreferences prefs = await SharedPreferences.getInstance();

    String? token = prefs.getString('token');

    if (token != null) {
      http.Response response = await http.post(url,
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
            'Authorization': token,
          },
          body: jsonEncode({'recentQuiz': recentQuiz}));

      final Map<String, dynamic> jsonData = jsonDecode(response.body);

      if (response.statusCode >= 400 && response.statusCode < 500) {
        return Left(jsonData['message']);
      } else {
        return Right(RecentQuiz.fromJson(jsonData));
      }
    }
    return const Left('Unauthorized');
  }

  EitherData<List<User>> searchUser(String? query) async {
    Uri url = Uri.parse('$baseUrl/users/search?q=$query');

    if (query == null || query.isEmpty) {
      return const Right([]);
    }

    http.Response response = await http.get(url);

    final dynamic data = json.decode(response.body);

    if (response.statusCode >= 400 && response.statusCode < 500) {
      return Left(data['message']);
    } else {
      final List<dynamic> list = List.from(data);
      final List<User> usersList = list.map((e) => User.fromJson(e)).toList();

      return Right(usersList);
    }
  }

  Future<User> getUserById(int id) async {
    Uri url = Uri.parse('$baseUrl/users/userById');
    Object body = jsonEncode({'id': id});

    http.Response response = await http.post(url, body: body, headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    });

    final Map<String, dynamic> jsonData = jsonDecode(response.body);

    final user = User.fromJson(jsonData);
    return user;
  }
}
