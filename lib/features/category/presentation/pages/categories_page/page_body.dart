import 'package:flutter/material.dart';
import 'product_container.dart';

class PageBody extends StatelessWidget {
  const PageBody({
    Key key,
    @required this.itemWidth,
    @required this.itemHeight,
    @required this.cardColor,
  }) : super(key: key);

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
      childAspectRatio: (itemWidth * 0.96 / itemHeight),
      children: <Widget>[
        ProductContainer(kCardColor: cardColor),
        ProductContainer(kCardColor: cardColor),
        ProductContainer(kCardColor: cardColor),
        ProductContainer(kCardColor: cardColor),
      ],
    );
  }
}
