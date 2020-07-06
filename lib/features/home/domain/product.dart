class Product {
  const Product(
      {this.title,
      this.details,
      this.gender,
      this.brand,
      this.price,
      this.color,
      this.season,
      this.size,
      this.featured,
      this.category,
      this.imagePath,
      this.code,
      this.availability});

  final String title, details, category;
  final Gender gender;
  final Brand brand;
  final num price;
  final Color color;
  final Season season;
  final int size;
  final bool featured;
  final String imagePath;
  final int code;
  final bool availability;
} // freezed

enum Brand {
  lcwaikiki,
  koton,
  hm,
}

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
