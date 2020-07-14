import 'dart:html';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:men_baitak/features/category/infrastructure/data_sources/category_remote_data_source.dart';
import 'package:men_baitak/features/category/infrastructure/models/category_model.dart';

class CategoryRemoteDataSourceImpl extends CategoryRemoteDataSource {
  @override
  Future<CategoryModel> getCatgeory(String categoryId) async {
    final query =
        await Firestore.instance.document('categories/$categoryId').get();
    return CategoryModel.fromJson(query.data);
  }

  @override
  Future<List<CategoryModel>> getFeaturedProductsCatgeories() async {
    return await Firestore.instance
        .collection('categories')
        .getDocuments()
        .then((value) => value.documents
            .map((e) => CategoryModel.fromJson(e.data))
            .toList());
  }
}
