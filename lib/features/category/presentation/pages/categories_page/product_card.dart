import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductCard extends StatelessWidget {
  const ProductCard();

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(0),
            child: Image.asset(
              'assets/images/testphoto.jpg',
//                              width: MediaQuery.of(context).size.width * .5,
            ),
          ),
          Divider(
            height: 0,
            color: Theme.of(context).accentColor,
            thickness: 1.5,
          ),
          SizedBox(
            height: 3,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 2, 10, 2),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Product Title',
                    style: TextStyle(fontSize: 11.0),
                  ),
                ]),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 2, 10, 0),
            child: Text(
              'Product Short Description',
              style: TextStyle(fontSize: 8.0),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 4, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '80 LYD',
                  style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold),
                ),
                IconButton(
                  constraints: BoxConstraints(
                    minHeight: 30,
                    minWidth: 30,
                  ),
                  icon: FaIcon(FontAwesomeIcons.shoppingBag),
                  color: Colors.black,
                  iconSize: 18.0,
                  disabledColor: Color(0xFF909090),
                  padding: EdgeInsets.all(0),
                  onPressed: () {},
                ),
              ],
            ),
          )
        ],
      ),
      elevation: 15,
    );
  }
}
