import 'package:flutter/material.dart';
import 'package:men_baitak/core/presentation/widgets/button.dart';
import 'package:men_baitak/features/bag/domain/entities/order.dart';
import 'package:men_baitak/features/bag/presentation/widgets/order_card.dart';

class BagPage extends StatelessWidget {
  const BagPage();

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.bodyText1.apply(
          color: Theme.of(context).accentColor,
        );
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'My Bag',
              style: textStyle.apply(
                fontSizeFactor: MediaQuery.of(context).size.width / 150,
              ),
            ),
          ),
          ...orders.map(
            (order) => OrderCard(order: order, textStyle: textStyle),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Total Amount',
                  style: textStyle,
                ),
                Text(
                  '999.9 LYD',
                  style: textStyle,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Button(
                text: 'Check out',
                textStyle: textStyle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

final List<Order> orders = [
  Order(
    title: 'T-Shirt',
    imgPath: 'assets/images/clothes1.jpg',
    quantity: '0',
    price: '99.9 LYD',
    code: 'BS294C',
  ),
  Order(
    title: 'T-Shirt',
    imgPath: 'assets/images/clothes1.jpg',
    quantity: '0',
    price: '99.9 LYD',
    code: 'BS294C',
  ),
  Order(
    title: 'T-Shirt',
    imgPath: 'assets/images/clothes1.jpg',
    quantity: '0',
    price: '99.9 LYD',
    code: 'BS294C',
  ),
  Order(
    title: 'T-Shirt',
    imgPath: 'assets/images/clothes1.jpg',
    quantity: '0',
    price: '99.9 LYD',
    code: 'BS294C',
  ),
];
