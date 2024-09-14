import 'package:dartz/dartz.dart';
import 'package:tech_test/common/item/data/models/category.dart';
import 'package:tech_test/common/item/data/providers/category_provider.dart';
import 'package:tech_test/core/errors/failure.dart';
import 'package:tech_test/core/utils/typedefs.dart';

abstract class CategoryRepo {
  const CategoryRepo();

  Result<List<Category>> getCategorys();
}

class CategoryRepoImpl implements CategoryRepo {
  const CategoryRepoImpl(this._categoryProvider);

  final CategoryProvider _categoryProvider;

  @override
  Result<List<Category>> getCategorys() async {
    try {
      List<Category> categories = await _categoryProvider.loadFromJson();
      return Right(categories);
    } catch (e) {
      return Left(JSONFailure(message: 'JSON format invalid', statusCode: ''));
    }
  }
}
