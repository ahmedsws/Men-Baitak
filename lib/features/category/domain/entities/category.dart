
import 'product.dart';


class Category {
  const Category({
    this.id,
    this.name,
    this.products,
  });
  final String id;
  final String name;
  final List<Product> products;
}
