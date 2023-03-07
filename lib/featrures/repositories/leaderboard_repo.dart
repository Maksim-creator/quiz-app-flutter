import 'dart:convert';

import 'package:quizz_app/featrures/repositories/constants.dart';

import '../leaderboard/models/leaderboard.dart';
import 'package:http/http.dart' as http;

class LeaderboardRepo {
  Future<Leader> getLeader() async {
    Uri url = Uri.parse('$baseUrl/users/leader');

    final response = await http.get(url);

    final data = json.decode(response.body);

    return Leader.fromJson(data);
  }

  Future<List<Leader>> getLeaderboard() async {
    Uri url = Uri.parse('$baseUrl/users/leaderboard');

    final response = await http.get(url);

    final List<dynamic> data = json.decode(response.body);

    List<Leader> list = data.map((e) => Leader.fromJson(e)).toList();

    return list;
  }
}
