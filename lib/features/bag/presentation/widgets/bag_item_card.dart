import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:men_baitak/features/bag/domain/entities/bag_item.dart';

class BagItemCard extends StatelessWidget {
  const BagItemCard({
    Key key,
    @required this.item,
    @required this.textStyle,
  }) : super(key: key);

  final TextStyle textStyle;
  final BagItem item;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                item.product.imgPaths[0],
                height: 100,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.product.title,
                      style: textStyle.apply(
                        fontSizeDelta: 2,
                      ),
                    ),
                    Text(
                      item.product.price,
                      style: textStyle,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Text(
                          item.product.code,
                          style: textStyle,
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        IconButton(
                          icon: FaIcon(
                            FontAwesomeIcons.minus,
                            size: 15,
                          ),
                          color: Theme.of(context).accentColor,
                          onPressed: () {},
                        ),
                        Text(
                          item.quantity,
                          style: textStyle,
                        ),
                        IconButton(
                          icon: FaIcon(
                            FontAwesomeIcons.plus,
                            size: 15,
                          ),
                          color: Theme.of(context).accentColor,
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Divider(
          height: 0,
          indent: 20,
          endIndent: 20,
        ),
      ],
    );
  }
}
