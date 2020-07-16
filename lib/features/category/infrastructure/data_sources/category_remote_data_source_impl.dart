import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:men_baitak/features/category/infrastructure/data_sources/category_remote_data_source.dart';
import 'package:men_baitak/features/category/infrastructure/models/category_model.dart';
import 'package:men_baitak/features/category/infrastructure/models/product_model.dart';

class CategoryRemoteDataSourceImpl extends CategoryRemoteDataSource {
  @override
  Future<CategoryModel> getCatgeory(String categoryId) async {
    final query =
        await Firestore.instance.document('categories/$categoryId').get();
    return CategoryModel.fromJson(query.data);
  }

  @override
  Future<List<CategoryModel>> getFeaturedProductsCatgeories() async {
    final products = await Firestore.instance
        .collectionGroup('products')
        .where('featured', isEqualTo: true)
        .getDocuments()
        .then((value) => value.documents
            .map((doc) => ProductModel.fromJson(doc.data))
            .toList());
    final catDocs = await Firestore.instance
        .collection('categories')
        .getDocuments()
        .then((query) => query.documents
            .map((doc) => CategoryModel.fromJson({
                  ...doc.data,
                  'products': products
                      .where((prod) => prod.categoryId == doc.data['id'])
                      .toList(),
                }))
            .toList());
    return catDocs;
    //query.map((json) => CategoryModel.fromJson(json)).toList();
    // for (final doc in catDocs) {}
  }
}
