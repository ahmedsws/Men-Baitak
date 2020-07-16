import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:men_baitak/features/category/application/blocs/category_bloc/category_bloc.dart';
import 'package:men_baitak/features/category/presentation/pages/categories_page/widgets/page_body.dart';

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
    return BlocBuilder<CategoryBloc, CategoriesState>(
      builder: (context, state) => state is CategoriesLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : DefaultTabController(
              length: state.categories.length,
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
                              ...state.categories.map(
                                (category) => Tab(
                                  text: category.name,
                                ),
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
                    ...state.categories.map(
                      (category) => PageBody(
                          products: category.products,
                          itemWidth: itemWidth,
                          itemHeight: itemHeight,
                          cardColor: cardColor),
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
