import 'package:dartz/dartz.dart';
import 'package:tech_test/common/item/data/models/item.dart';
import 'package:tech_test/common/item/data/providers/financial_product_provider.dart';
import 'package:tech_test/core/errors/failure.dart';
import 'package:tech_test/core/utils/typedefs.dart';

abstract class FinancialProductRepo {
  const FinancialProductRepo();

  Result<List<Item>> getFinancialProducts();
}

class FinancialProductRepoImpl implements FinancialProductRepo {
  const FinancialProductRepoImpl(this._financialProductProvider);

  final FinancialProductProvider _financialProductProvider;

  @override
  Result<List<Item>> getFinancialProducts() async {
    try {
      List<Item> items = await _financialProductProvider.loadFromJson();
      return Right(items);
    } catch (e) {
      return Left(JSONFailure(message: 'JSON format invalid', statusCode: ''));
    }
  }
}
