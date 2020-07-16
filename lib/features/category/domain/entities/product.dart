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
      this.availability,
      this.categoryId});

  final String title, details, code, price, brand, gender, season, categoryId;

  final List<String> colors, imgPaths, sizes;

  final bool featured, availability;
} // freezed
