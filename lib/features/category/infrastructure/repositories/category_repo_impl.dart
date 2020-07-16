import 'package:men_baitak/features/category/domain/entities/category.dart';
import 'package:men_baitak/features/category/domain/repositories/category_repository.dart';
import 'package:men_baitak/features/category/infrastructure/data_sources/category_remote_data_source.dart';
import 'package:men_baitak/features/category/infrastructure/data_sources/category_remote_data_source_impl.dart';

class CategoryRepositoryImpl implements CategoryRepository {
  CategoryRepositoryImpl({CategoryRemoteDataSource remoteDataSource})
      : remoteDataSource = remoteDataSource ?? CategoryRemoteDataSourceImpl();

  final CategoryRemoteDataSource remoteDataSource;

  @override
  Future<Category> getCatgeory(String categoryId) =>
      remoteDataSource.getCatgeory(categoryId);

  @override
  Future<List<Category>> getFeaturedProductsCatgeories() =>
      remoteDataSource.getFeaturedProductsCatgeories();
}
