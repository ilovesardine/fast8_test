import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:tech_test/common/item/data/models/category.dart';

class CategoryProvider {
  Future<List<Category>> loadFromJson() async {
    final String response =
        await rootBundle.loadString('assets/json/categories.json');
    final List<dynamic> data = json.decode(response);
    return data.map((json) => Category.fromMap(json)).toList();
  }
}
