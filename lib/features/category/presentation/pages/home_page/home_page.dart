import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:men_baitak/features/category/application/blocs/category_bloc/category_bloc.dart';
import 'widgets/carousel_with_indicator.dart';
import 'widgets/preview_categories.dart';

class HomePage extends StatelessWidget {
  const HomePage();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryBloc, CategoriesState>(
      builder: (context, state) => state is CategoriesLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: CarouselWithIndicator(),
                ),
                ...state.categories.map((category) => PreviewCategory(
                      category: category,
                    ))
              ],
            ),
    );
  }
}
