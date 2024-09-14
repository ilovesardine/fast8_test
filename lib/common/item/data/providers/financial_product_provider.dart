import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:tech_test/common/item/data/models/item.dart';

class FinancialProductProvider {
  Future<List<Item>> loadFromJson() async {
    final String response =
        await rootBundle.loadString('assets/json/financial_products.json');
    final List<dynamic> data = json.decode(response);
    return data.map((json) => Item.fromMap(json)).toList();
  }
}
