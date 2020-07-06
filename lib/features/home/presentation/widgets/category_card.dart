import 'package:flutter/material.dart';
import 'package:men_baitak/features/home/domain/product.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({this.product});
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Image(
          height: 200,
          image: AssetImage(product.imagePath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
