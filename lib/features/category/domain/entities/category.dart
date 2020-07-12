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

class Product {
  const Product(
      {this.title,
      this.details,
      this.gender,
      this.brand,
      this.price,
      this.colors,
      this.season,
      this.sizes, // make it as a class
      this.featured,
      this.imgPaths,
      this.code,
      this.availability});

  final String title, details, code, price, brand, gender, season;

  final List<String> colors, imgPaths, sizes;

  final bool featured;
  final bool availability;
} // freezed
