import 'package:flutter/material.dart';
import 'package:men_baitak/features/category/domain/entities/category.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({this.product});

  final Product product;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Material(
        shadowColor: Theme.of(context).accentColor,
        elevation: 1.5,
        child: Image(
          height: 200,
          image: AssetImage(product.imagePath),
          fit: BoxFit.contain,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        clipBehavior: Clip.antiAlias,
      ),
    );
  }
}
