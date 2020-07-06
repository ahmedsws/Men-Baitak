import 'package:flutter/material.dart';
import 'package:men_baitak/features/home/domain/product.dart';

import 'widgets/carousel_with_indicator.dart';
import 'widgets/category_card.dart';

class HomePage extends StatelessWidget {
  const HomePage();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CarouselWithIndicator(),
        PreviewCategories(category: 'Clothes'),
        PreviewCategories(category: 'Accessories'),
        PreviewCategories(category: 'Shoes'),
      ],
    );
  }
}

class PreviewCategories extends StatelessWidget {
  const PreviewCategories({
    @required this.category,
  });

  final String category;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                category,
                style: Theme.of(context).textTheme.bodyText1.apply(
                      color: Theme.of(context).accentColor,
                    ),
              ),
              Text(
                'View All',
                style: Theme.of(context).textTheme.bodyText1.apply(
                      color: Theme.of(context).accentColor,
                    ),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: AlwaysScrollableScrollPhysics(),
          child: Row(
            children: products.map((product) {
              if (product.category == category)
                return CategoryCard(
                  product: product,
                );
              return Container();
            }).toList(),
          ),
        ),
      ],
    );
  }
}

final List<Product> products = [
  Product(category: 'Shoes', imagePath: 'assets/images/shoes1.jpg'),
  Product(category: 'Accessories', imagePath: 'assets/images/accessories1.jpg'),
  Product(category: 'Shoes', imagePath: 'assets/images/shoes2.jpg'),
  Product(category: 'Clothes', imagePath: 'assets/images/clothes2.jpg'),
  Product(category: 'Accessories', imagePath: 'assets/images/accessories2.jpg'),
  Product(category: 'Clothes', imagePath: 'assets/images/clothes3.jpg'),
  Product(category: 'Clothes', imagePath: 'assets/images/clothes1.jpg'),
  Product(category: 'Shoes', imagePath: 'assets/images/shoes3.jpg'),
  Product(category: 'Accessories', imagePath: 'assets/images/accessories1.jpg'),
  Product(category: 'Shoes', imagePath: 'assets/images/shoes1.jpg'),
  Product(category: 'Clothes', imagePath: 'assets/images/clothes2.jpg'),
  Product(category: 'Accessories', imagePath: 'assets/images/accessories2.jpg'),
  Product(category: 'Clothes', imagePath: 'assets/images/clothes3.jpg'),
];
