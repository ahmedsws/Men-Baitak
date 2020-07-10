import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:men_baitak/features/category/presentation/pages/categories_page/product_card.dart';

class CardsPageBody extends StatelessWidget {
  const CardsPageBody();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      final height = constrains.biggest.height;
      final width = constrains.biggest.width;
      return SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: height * .05),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: height * .58,
                    width: width * .45,
                    child: ProductCard(),
                  ),
                  SizedBox(width: width * .02),
                  Container(
                    height: height * .58,
                    width: width * .45,
                    child: ProductCard(),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    });
  }
}
