import 'package:flutter/material.dart';
import 'package:men_baitak/core/presentation/widgets/button.dart';
import 'package:men_baitak/features/bag/domain/entities/bag_item.dart';
import 'package:men_baitak/features/bag/presentation/widgets/bag_item_card.dart';
import 'package:men_baitak/features/category/domain/entities/category.dart';
import 'package:men_baitak/features/category/domain/entities/product.dart';

class BagPage extends StatelessWidget {
  const BagPage();

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.bodyText1.apply(
          color: Theme.of(context).accentColor,
        );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).accentColor,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'My Bag',
          style: textStyle.apply(
            color: Theme.of(context).primaryColor,
            fontSizeFactor: MediaQuery.of(context).size.width / 220,
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
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
            ...items.map(
              (item) => BagItemCard(item: item, textStyle: textStyle),
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
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

final List<BagItem> items = [
  BagItem(
    product: products[0],
    quantity: '0',
  ),
  BagItem(
    product: products[1],
    quantity: '0',
  ),
];

final List<Product> products = [
  Product(
    title: 'T-Shirt',
    imgPaths: ['assets/images/clothes1.jpg'],
    price: '99.9 LYD',
    code: 'BS294C',
  ),
  Product(
    title: 'T-Shirt',
    imgPaths: ['assets/images/clothes1.jpg'],
    price: '99.9 LYD',
    code: 'BS294C',
  ),
];
