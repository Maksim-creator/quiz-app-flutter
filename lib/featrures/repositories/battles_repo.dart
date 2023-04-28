import 'dart:convert';

import 'package:either_dart/either.dart';
import 'package:quizz_app/featrures/repositories/auth_repo.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../battles/models/battle/battle.dart';
import 'constants.dart';
import 'package:http/http.dart' as http;

class BattleRepo {
  EitherData<List<Battle>> getIncomingBattle() async {
    final url = Uri.parse('$baseUrl/battles/incomingBattles');

    final SharedPreferences prefs = await SharedPreferences.getInstance();

    String? token = prefs.getString('token');
    if (token != null) {
      final response = await http.get(
        url,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': token,
        },
      );

      final dynamic data = json.decode(response.body);

      if (response.statusCode >= 400 && response.statusCode < 500) {
        return Left(data['message']);
      } else {
        final List<Battle> incomingBattles =
            (data as List).map((battle) => Battle.fromJson(battle)).toList();

        return Right(incomingBattles);
      }
    }

    return const Left('Unauthorized');
  }

  EitherData<List<Battle>> rejectBattleRequest(Battle battleRequest) async {
    final url = Uri.parse('$baseUrl/battles/rejectBattleRequest');

    final SharedPreferences prefs = await SharedPreferences.getInstance();

    String? token = prefs.getString('token');
    if (token != null) {
      final response = await http.post(url,
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
            'Authorization': token,
          },
          body: jsonEncode({"battleRequest": battleRequest}));

      final dynamic data = json.decode(response.body);

      if (response.statusCode >= 400 && response.statusCode < 500) {
        return Left(data['message']);
      } else {
        final List<Battle> incomingBattles =
            (data as List).map((battle) => Battle.fromJson(battle)).toList();

        return Right(incomingBattles);
      }
    }

    return const Left('Unauthorized');
  }
}
