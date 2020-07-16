import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:men_baitak/features/category/application/blocs/category_bloc/category_bloc.dart';
import 'package:men_baitak/features/category/infrastructure/models/product_model.dart';
import 'product_container.dart';

class PageBody extends StatelessWidget {
  const PageBody({
    Key key,
    @required this.products,
    @required this.itemWidth,
    @required this.itemHeight,
    @required this.cardColor,
  }) : super(key: key);

  final List<ProductModel> products;
  final double itemWidth;
  final double itemHeight;
  final Color cardColor;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(12),
      crossAxisSpacing: 12,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      childAspectRatio: (itemWidth * 0.94 / itemHeight),
      children: <Widget>[
        ...products.map(
          (product) =>
              ProductContainer(product: product, kCardColor: cardColor),
        ),
      ],
    );
  }
}
