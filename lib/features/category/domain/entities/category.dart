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
      this.color,
      this.season,
      this.size, // make it as a class
      this.featured,
      this.imagePath,
      this.code,
      this.availability});

  final String title, details;
  final Gender gender;
  final String brand;
  final double price;
  final Color color;
  final Season season;
  final int size;
  final bool featured;
  final String imagePath;
  final int code;
  final bool availability;
} // freezed

enum Gender {
  male,
  female,
}

enum Color {
  black,
  white,
  blue,
  red,
  yellow,
  green,
  colorful,
}

enum Season {
  summer,
  winter,
  all,
}
