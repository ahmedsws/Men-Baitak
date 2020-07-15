import 'package:men_baitak/features/category/domain/entities/product.dart';

class ProductModel extends Product {
  const ProductModel(
    String title,
    details,
    code,
    price,
    brand,
    gender,
    season,
    categoryId,
    List<String> colors,
    imgPaths,
    sizes,
    bool featured,
    availability,
  ) : super(
          title: title,
          details: details,
          code: code,
          price: price,
          brand: brand,
          gender: gender,
          season: season,
          colors: colors,
          imgPaths: imgPaths,
          sizes: sizes,
          featured: featured,
          availability: availability,
        );

  ProductModel.fromJson(Map<String, dynamic> json)
      : super(
          title: json['title'],
          details: json['details'],
          code: json['code'],
          price: json['price'],
          brand: json['brand'],
          gender: json['gender'],
          season: json['season'],
          colors: List.from(json['colors']),
          imgPaths: json['imgPaths'],
          sizes: List.from(json['sizes']),
          featured: json['featured'],
          availability: json['availability'],
        );
}
