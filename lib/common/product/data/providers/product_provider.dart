import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:tech_test/common/product/data/models/product.dart';

class ProductProvider {
  Future<List<Product>> loadFromJson() async {
    final String response =
        await rootBundle.loadString('assets/json/products.json');
    final List<dynamic> data = json.decode(response);
    return data.map((json) => Product.fromMap(json)).toList();
  }
}
