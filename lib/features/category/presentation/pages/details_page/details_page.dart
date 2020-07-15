import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:men_baitak/core/presentation/widgets/base_appbar.dart';
import 'package:men_baitak/features/category/domain/entities/product.dart';
import 'package:men_baitak/features/category/infrastructure/models/product_model.dart';
import 'package:men_baitak/features/category/presentation/pages/details_page/widgets/detail_dropdown_button.dart';

import '../../../../../core/presentation/widgets/button.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({this.product});
  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final textStyle = Theme.of(context).textTheme.bodyText1.apply(
          color: Theme.of(context).accentColor,
        );
    return Scaffold(
      appBar: BaseAppBar(
        title: 'Men Baitak',
        icon: IconButton(
            icon: FaIcon(FontAwesomeIcons.shoppingBag), onPressed: () {}),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.title,
                    style: textStyle.apply(
                      fontSizeDelta: size.height / 50,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      '${product.price} LYD',
                      style: textStyle,
                    ),
                  ),
                  Text(
                    product.code ?? 'code',
                    style: textStyle,
                  ),
                ],
              ),
            ),
            // ...product.imgPaths.map(
            // (imgPath) =>
            Image.asset(
              'assets/images/clothes2.jpg',
              width: double.infinity,
              height: 250,
              fit: BoxFit.cover,
            ),
            // ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                children: [
                  Text(
                    product.details ??
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt , consectetur adipiscing elit',
                    style: textStyle.apply(
                      fontSizeFactor: .7,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        DetailDropDownButton(
                          options: product.sizes,
                          hint: 'Size',
                        ),
                        DetailDropDownButton(
                          options: product.colors,
                          hint: 'Color',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Button(text: 'Add to bag', textStyle: textStyle),
            ),
          ],
        ),
      ),
    );
  }
}
