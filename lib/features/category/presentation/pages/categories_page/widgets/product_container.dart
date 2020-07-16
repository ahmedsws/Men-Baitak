import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:men_baitak/features/category/infrastructure/models/product_model.dart';
import 'package:men_baitak/features/category/presentation/pages/details_page/details_page.dart';

class ProductContainer extends StatelessWidget {
  const ProductContainer({
    @required this.kCardColor,
    @required this.product,
  });

  final Color kCardColor;
  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    final Color primaryColor = Theme.of(context).primaryColor;
    final Color accentColor = Theme.of(context).accentColor;
    final Color kDescriptionColor = Colors.black;

    return InkWell(
      onTap: () => Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => DetailsPage(
                product: product,
              ))),
      child: Container(
        decoration: BoxDecoration(
          color: kCardColor,
          borderRadius: BorderRadius.circular(3.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade400,
              blurRadius: 3.0,
              spreadRadius: 0.1,
              offset: Offset(0.0, 3.0), // shadow direction: bottom right
            )
          ],
        ),
        padding: const EdgeInsets.all(0),
        // autosize text
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              image: NetworkImage(product.imgPaths[0]),
            ),
            Divider(
              height: 0,
              color: accentColor,
              thickness: 1.5,
            ),
            SizedBox(
              height: 3,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 2, 12, 2),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      product.title,
                      style: TextStyle(fontSize: 12.0, color: accentColor),
                    ),
                  ]),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 2, 12, 0),
              child: Text(
                product.details,
                style: TextStyle(
                    fontSize: 9.0,
                    color: kDescriptionColor,
                    fontFamily: 'GoogleFonts.balooChettan'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(14, 0, 8, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${product.price} LYD',
                    style: TextStyle(fontSize: 12.0, color: accentColor),
                  ),
                  IconButton(
                    constraints: BoxConstraints(
                      minHeight: 30,
                      minWidth: 30,
                    ),
                    icon: Icon(Icons.card_giftcard),
                    color: accentColor,
                    iconSize: 18.0,
                    padding: EdgeInsets.all(0),
                    onPressed: () {},
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
