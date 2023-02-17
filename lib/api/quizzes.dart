import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_device_type/flutter_device_type.dart';
import 'package:http/http.dart' as http;
import 'package:quizz_app/api/entities.dart';
import 'package:quizz_app/featrures/quizzes/cubit/quizzes_cubit.dart';

import '../utils/toast.dart';

class QuizzesApi {
  String baseUrl = Device.get().isAndroid
      ? 'http://192.168.0.80:7001'
      : 'http://localhost:7001';

  Future getAvailableCategories(context) async {
    Uri url = Uri.parse('$baseUrl/categories');

    final response = await http.get(url);

    final data = json.decode(response.body);

    if (data is List) {
      List<Category> list = data.map((e) => Category.fromJson(e)).toList();
      BlocProvider.of<QuizzesCubit>(context).setCategories(list);
      return;
    } else {
      showToastMessage(data['message'], context, isError: true);
    }
  }

  Future<TopSelected> getTopSelectedQuiz(context) async {
    Uri url = Uri.parse('$baseUrl/quizzes/topSelected');

    final response = await http.get(url);

    final data = json.decode(response.body);

    return TopSelected(
        id: data['id'],
        category: data['category'],
        icon: data['icon'],
        topic: data['topic'],
        quizzesCount: data['quizzesCount']);
  }
}
