import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:quizz_app/featrures/repositories/constants.dart';

import '../categories/models/category.dart';

class CategoriesRepo {
  Future<List<Category>> getAvailableCategories() async {
    Uri url = Uri.parse('$baseUrl/categories');

    try {
      final response = await http.get(url);

      final List<dynamic> data = json.decode(response.body);

      List<Category> list = data.map((e) => Category.fromJson(e)).toList();

      return list;
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
