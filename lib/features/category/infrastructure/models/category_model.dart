import 'package:men_baitak/features/category/domain/entities/category.dart';

class CategoryModel extends Category {
  const CategoryModel({
    String id,
    String name,
    List<Product> products,
  }) : super(
          id: id,
          name: name,
          products: products,
        );

  CategoryModel.fromJson(Map<String, dynamic> json)
      : super(
          id: json['id'],
          name: json['name'],
          products: json['products'],
        );

  Map<String, dynamic> toJson() =>
      {'id': id, 'name': name, 'products': products};
}
