import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:quizz_app/featrures/repositories/constants.dart';
import '../quizzes/models/quiz.dart';

class QuizzesRepo {
  Future<TopSelected> getTopSelectedQuiz() async {
    Uri url = Uri.parse('$baseUrl/quizzes/topSelected');

    final response = await http.get(url);

    final data = json.decode(response.body);
    return TopSelected.fromJson(data);
  }

  Future<List<Topic>> getTopicsByCategory(String category) async {
    Uri url = Uri.parse('$baseUrl/quizzes/topics');

    final response = await http.post(url, body: {"category": category});

    final List<dynamic> data = json.decode(response.body);

    List<Topic> list = data.map((e) => Topic.fromJson(e)).toList();

    return list;
  }

  Future<List<Question>> getQuizzesByTopic(String topic, int count) async {
    Uri url = Uri.parse('$baseUrl/quizzes/quiz');

    final response =
        await http.post(url, body: {"topic": topic, "count": count.toString()});

    final List<dynamic> data = json.decode(response.body);
    List<Question> list = data.map((e) => Question.fromJson(e)).toList();

    return list;
  }

  Future<Topic> getQuizById(String id) async {
    Uri url = Uri.parse('$baseUrl/quizzes/quizById');

    final response = await http.post(url, body: {'id': id});

    final Map<String, dynamic> data = json.decode(response.body);

    return Topic.fromJson(data);
  }
}
