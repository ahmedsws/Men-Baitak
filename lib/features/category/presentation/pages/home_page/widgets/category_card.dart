import 'package:flutter/material.dart';
import 'package:men_baitak/features/category/domain/entities/product.dart';
import 'package:men_baitak/features/category/infrastructure/models/product_model.dart';
import 'package:men_baitak/features/category/presentation/pages/details_page/details_page.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({this.product});

  final ProductModel product;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => DetailsPage(
                  product: product,
                )));
      },
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Material(
          shadowColor: Theme.of(context).accentColor,
          elevation: 1.5,
          child: Image(
            height: height * .33,
            image: AssetImage('assets/images/clothes2.jpg'),
            fit: BoxFit.contain,
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          clipBehavior: Clip.antiAlias,
        ),
      ),
    );
  }
}
