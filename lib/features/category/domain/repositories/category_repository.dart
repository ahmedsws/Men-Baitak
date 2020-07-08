import 'package:men_baitak/features/category/domain/entities/category.dart';

abstract class CategoryRepository {
  Future<Category> getCatgeory(String categoryId); // add filter
  Future<List<Category>> getFeaturedProductsCatgeories();
}
