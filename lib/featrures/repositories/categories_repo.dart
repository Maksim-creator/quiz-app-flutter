import 'dart:async';
import 'dart:convert';

import 'package:flutter_device_type/flutter_device_type.dart';
import 'package:http/http.dart' as http;

import '../categories/models/category.dart';

class CategoriesRepo {
  String baseUrl = Device.get().isAndroid
      ? 'http://192.168.0.80:7001'
      : 'http://localhost:7001';

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
