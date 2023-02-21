import 'dart:convert';

import 'package:flutter_device_type/flutter_device_type.dart';

import '../leaderboard/models/leaderboard.dart';
import 'package:http/http.dart' as http;

class LeaderboardRepo {
  String baseUrl = Device.get().isAndroid
      ? 'http://192.168.0.80:7001'
      : 'http://localhost:7001';

  Future<Leader> getLeader() async {
    Uri url = Uri.parse('$baseUrl/users/leader');

    final response = await http.get(url);

    final data = json.decode(response.body);

    return Leader.fromJson(data);
  }
}
