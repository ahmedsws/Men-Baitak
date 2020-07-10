import 'package:flutter/material.dart';
import 'package:men_baitak/features/category/presentation/pages/categories_page/page_body.dart';

class CategoriesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 24) / 1.9,
        itemWidth = size.width / 2;
    final Color cardColor = Color(0xFFFFFFFF);
    final labelTextTheme = Theme.of(context)
        .textTheme
        .bodyText1
        .apply(color: Theme.of(context).accentColor);
    final accentColor = Theme.of(context).accentColor;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: Container(
            color: Colors.white,
            child: SafeArea(
              child: Column(
                children: <Widget>[
                  Expanded(child: Container()),
                  TabBar(
                    labelStyle: labelTextTheme,
                    labelColor: accentColor,
                    tabs: [
                      Tab(
                        text: 'Clothes',
                      ),
                      Tab(
                        text: 'Shoes',
                      ),
                      Tab(
                        text: 'Accessories',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            PageBody(
                itemWidth: itemWidth,
                itemHeight: itemHeight,
                cardColor: cardColor),
            PageBody(
                itemWidth: itemWidth,
                itemHeight: itemHeight,
                cardColor: cardColor),
            PageBody(
                itemWidth: itemWidth,
                itemHeight: itemHeight,
                cardColor: cardColor),
          ],
        ),
      ),
    );
  }
}
