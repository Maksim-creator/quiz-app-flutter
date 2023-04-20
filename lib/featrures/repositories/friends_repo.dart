import 'dart:convert';

import 'package:either_dart/either.dart';
import 'package:quizz_app/featrures/repositories/auth_repo.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

import 'constants.dart';

class FriendsRepo {
  EitherData<List<int>> getFriendsList() async {
    Uri url = Uri.parse('$baseUrl/friends');

    final SharedPreferences prefs = await SharedPreferences.getInstance();

    String? token = prefs.getString('token');

    if (token != null) {
      http.Response response = await http.post(
        url,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': token,
        },
      );

      final List<dynamic> jsonData = jsonDecode(response.body);

      if (response.statusCode >= 400 && response.statusCode < 500) {
        return const Left('error');
      } else {
        return Right(jsonData.cast<int>());
      }
    }

    return const Left('Unauthorized');
  }

  EitherData<List<int>> getIncomingRequests() async {
    Uri url = Uri.parse('$baseUrl/friends/getIncomingRequests');

    final SharedPreferences prefs = await SharedPreferences.getInstance();

    String? token = prefs.getString('token');

    if (token != null) {
      http.Response response = await http.post(
        url,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': token,
        },
      );

      final List<dynamic> jsonData = jsonDecode(response.body);

      if (response.statusCode >= 400 && response.statusCode < 500) {
        return const Left('error');
      } else {
        return Right(jsonData.cast<int>());
      }
    }

    return const Left('Unauthorized');
  }

  EitherData<List<int>> submitFriendRequest(int whoSentId) async {
    Uri url = Uri.parse('$baseUrl/friends/submitRequest');

    final SharedPreferences prefs = await SharedPreferences.getInstance();

    String? token = prefs.getString('token');

    if (token != null) {
      http.Response response = await http.post(url,
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
            'Authorization': token,
          },
          body: jsonEncode({'whoSent': whoSentId}));

      final List<dynamic> jsonData = jsonDecode(response.body);

      if (response.statusCode >= 400 && response.statusCode < 500) {
        return const Left('error');
      } else {
        return Right(jsonData.cast<int>());
      }
    }

    return const Left('Unauthorized');
  }

  EitherData<List<int>> rejectFriendRequest(int whoSentId) async {
    Uri url = Uri.parse('$baseUrl/friends/rejectRequest');

    final SharedPreferences prefs = await SharedPreferences.getInstance();

    String? token = prefs.getString('token');

    if (token != null) {
      http.Response response = await http.post(url,
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
            'Authorization': token,
          },
          body: jsonEncode({'whoSent': whoSentId}));

      final List<dynamic> jsonData = jsonDecode(response.body);

      if (response.statusCode >= 400 && response.statusCode < 500) {
        return const Left('error');
      } else {
        return Right(jsonData.cast<int>());
      }
    }

    return const Left('Unauthorized');
  }

  EitherData<List<int>> sendFriendRequest(int friendId) async {
    Uri url = Uri.parse('$baseUrl/friends/sendRequest');

    final SharedPreferences prefs = await SharedPreferences.getInstance();

    String? token = prefs.getString('token');

    if (token != null) {
      http.Response response = await http.post(url,
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
            'Authorization': token,
          },
          body: jsonEncode({'friendId': friendId}));

      final List<dynamic> jsonData = jsonDecode(response.body);

      if (response.statusCode >= 400 && response.statusCode < 500) {
        return const Left('error');
      } else {
        return Right(jsonData.cast<int>());
      }
    }

    return const Left('Unauthorized');
  }
}
