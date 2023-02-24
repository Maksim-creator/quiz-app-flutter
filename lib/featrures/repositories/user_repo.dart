import 'dart:convert';

import 'package:flutter_device_type/flutter_device_type.dart';
import 'package:http/http.dart' as http;

class UserRepo {
  String baseUrl = Device.get().isAndroid
      ? 'http://192.168.0.80:7001'
      : 'http://localhost:7001';

  Future<dynamic> getUserAvatar(String username) async {
    Uri url = Uri.parse('$baseUrl/avatar');

    final response = await http.post(url, body: {"username": username});

    final avatar = json.decode(response.body);

    return avatar;
  }
}
