import 'dart:convert';

import 'package:flutter_device_type/flutter_device_type.dart';
import 'package:http/http.dart' as http;
import '../quizzes/models/quiz.dart';

class QuizzesRepo {
  String baseUrl = Device.get().isAndroid
      ? 'http://192.168.0.80:7001'
      : 'http://localhost:7001';

  Future<TopSelected> getTopSelectedQuiz() async {
    Uri url = Uri.parse('$baseUrl/quizzes/topSelected');

    final response = await http.get(url);

    final data = json.decode(response.body);
    return TopSelected.fromJson(data);
  }
}
