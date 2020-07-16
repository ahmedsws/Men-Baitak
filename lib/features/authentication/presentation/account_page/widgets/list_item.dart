import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ListItem extends StatelessWidget {
  const ListItem(this.itemIcon, this.itemText);
  final itemIcon;
  final String itemText;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Card(
        elevation: 2,
        child: LayoutBuilder(builder: (context, constrains) {
          final cardHeight = constrains.biggest.height,
              cardWidth = constrains.biggest.width;
          return Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0, right: 5),
                      child: FaIcon(itemIcon),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0, right: 5),
                      child: Text(
                        itemText,
                        style: TextStyle(
                            fontSize: 14, color: Theme.of(context).accentColor),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 0.05 * cardWidth,
                ),
                Row(
                  children: [
                    FaIcon(Icons.keyboard_arrow_right),
                  ],
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
