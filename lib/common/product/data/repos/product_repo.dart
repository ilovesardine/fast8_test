import 'package:dartz/dartz.dart';
import 'package:tech_test/common/product/data/models/product.dart';
import 'package:tech_test/common/product/data/providers/product_provider.dart';
import 'package:tech_test/core/errors/failure.dart';
import 'package:tech_test/core/utils/typedefs.dart';

abstract class ProductRepo {
  const ProductRepo();

  Result<List<Product>> getProducts();
}

class ProductRepoImpl implements ProductRepo {
  const ProductRepoImpl(this._productProvider);

  final ProductProvider _productProvider;

  @override
  Result<List<Product>> getProducts() async {
    try {
      List<Product> products = await _productProvider.loadFromJson();
      return Right(products);
    } catch (e) {
      return Left(JSONFailure(message: 'JSON format invalid', statusCode: ''));
    }
  }
}
