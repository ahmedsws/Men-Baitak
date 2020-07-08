import 'package:flutter/material.dart';
import 'package:men_baitak/features/category/domain/entities/category.dart';
import 'widgets/carousel_with_indicator.dart';
import 'widgets/preview_categories.dart';

class HomePage extends StatelessWidget {
  const HomePage();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: CarouselWithIndicator(),
        ),
        ...categories.map((category) => PreviewCategories(
              category: category,
            ))
      ],
    );
  }
}

final List<Category> categories = [
  Category(
    name: 'Clothes',
    id: '1',
    products: [
      Product(imagePath: 'assets/images/clothes2.jpg'),
      Product(imagePath: 'assets/images/clothes3.jpg'),
      Product(imagePath: 'assets/images/clothes2.jpg'),
      Product(imagePath: 'assets/images/clothes3.jpg'),
      Product(imagePath: 'assets/images/clothes1.jpg'),
      Product(imagePath: 'assets/images/clothes3.jpg'),
    ],
  ),
  Category(
    name: 'Accessories',
    id: '2',
    products: [
      Product(imagePath: 'assets/images/accessories1.jpg'),
      Product(imagePath: 'assets/images/accessories2.jpg'),
      Product(imagePath: 'assets/images/accessories1.jpg'),
      Product(imagePath: 'assets/images/accessories2.jpg'),
    ],
  ),
  Category(
    name: 'Shoes',
    id: '3',
    products: [
      Product(imagePath: 'assets/images/shoes1.jpg'),
      Product(imagePath: 'assets/images/shoes2.jpg'),
      Product(imagePath: 'assets/images/shoes3.jpg'),
      Product(imagePath: 'assets/images/shoes1.jpg'),
    ],
  ),
];
