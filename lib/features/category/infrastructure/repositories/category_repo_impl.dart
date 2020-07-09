import 'package:men_baitak/features/category/domain/entities/category.dart';
import 'package:men_baitak/features/category/domain/repositories/category_repository.dart';

class CategoryRepositoryImpl implements CategoryRepository {
  @override
  Future<Category> getCatgeory(String categoryId) {
    // TODO: implement getCatgeory
    throw UnimplementedError();
  }

  @override
  Future<List<Category>> getFeaturedProductsCatgeories() {}
}
