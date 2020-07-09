import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductContainer extends StatelessWidget {
  const ProductContainer({
    @required this.kCardColor,
  });

  final Color kCardColor;

  @override
  Widget build(BuildContext context) {
    final Color primaryColor = Theme.of(context).primaryColor;
    final Color accentColor = Theme.of(context).accentColor;
    final Color kDescriptionColor = Colors.black;

    return Container(
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(0),
            child: Image.asset(
              'assets/images/testphoto.jpg',
            ),
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
                    'Product Title',
                    style: TextStyle(fontSize: 12.0, color: accentColor),
                  ),
                ]),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 2, 12, 0),
            child: Text(
              'Product Short Description',
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
                  '80 LYD',
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
    );
  }
}
