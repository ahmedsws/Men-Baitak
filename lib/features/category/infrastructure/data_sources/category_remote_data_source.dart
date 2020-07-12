import 'package:men_baitak/features/category/infrastructure/models/category_model.dart';

abstract class CategoryRemoteDataSource {
  Future<CategoryModel> getCatgeory(String categoryId);
  Future<List<CategoryModel>> getFeaturedProductsCatgeories();
}
