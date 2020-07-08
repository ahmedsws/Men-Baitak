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
}
