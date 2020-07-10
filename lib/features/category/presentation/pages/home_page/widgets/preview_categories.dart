import 'package:flutter/material.dart';
import 'package:men_baitak/features/category/domain/entities/category.dart';
import 'package:men_baitak/features/category/presentation/pages/categories_page/categories_page.dart';

import 'category_card.dart';

class PreviewCategory extends StatelessWidget {
  const PreviewCategory({
    @required this.category,
  });

  final Category category;

  @override
  Widget build(BuildContext context) {
    final labelTextTheme = Theme.of(context).textTheme.bodyText1.apply(
          color: Theme.of(context).accentColor,
        );
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                category.name,
                style: labelTextTheme,
              ),
              InkWell(
                child: Text(
                  'View All',
                  style: labelTextTheme,
                ),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => CategoriesPage(),
                  ));
                },
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: AlwaysScrollableScrollPhysics(),
          child: Row(
            children: category.products.map((product) {
              return ProductCard(
                product: product,
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
