import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_device_type/flutter_device_type.dart';
import 'package:quizz_app/api/entities.dart';
import 'package:http/http.dart' as http;
import 'package:quizz_app/featrures/user/cubit/user_cubit.dart';

class UserApi {
  String baseUrl = Device.get().isAndroid
      ? 'http://192.168.0.80:7001'
      : 'http://localhost:7001';

  Future getLeader(context) async {
    Uri url = Uri.parse('$baseUrl/users/leader');

    final response = await http.get(url);

    final data = json.decode(response.body);

    final leader = Leader(
        avatar: data['avatar'],
        name: data['name'],
        totalExperience: data['totalExperience']);

    BlocProvider.of<UserCubit>(context).setLeader(leader);
  }
}
