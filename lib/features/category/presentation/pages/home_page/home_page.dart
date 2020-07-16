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

// final List<Category> categories = [
//   Category(
//     name: 'Clothes',
//     id: '1',
//     products: [
//       Product(
//         title: 'T-shirt',
//         imgPaths: ['assets/images/clothes2.jpg'],
//         sizes: ['1-2 Y', '2-3 Y', '3-4 Y', '4-5 Y'],
//         colors: ['Black', 'White', 'Blue', 'Orange'],
//       ),
//       Product(
//         title: 'T-shirt',
//         imgPaths: ['assets/images/clothes3.jpg'],
//         sizes: ['1-2 Y', '2-3 Y', '3-4 Y', '4-5 Y'],
//         colors: ['Black', 'White', 'Blue', 'Orange'],
//       ),
//       Product(
//         title: 'T-shirt',
//         imgPaths: ['assets/images/clothes2.jpg'],
//         sizes: ['1-2 Y', '2-3 Y', '3-4 Y', '4-5 Y'],
//         colors: ['Black', 'White', 'Blue', 'Orange'],
//       ),
//       Product(
//         title: 'T-shirt',
//         imgPaths: ['assets/images/clothes3.jpg'],
//         sizes: ['1-2 Y', '2-3 Y', '3-4 Y', '4-5 Y'],
//         colors: ['Black', 'White', 'Blue', 'Orange'],
//       ),
//       Product(
//         title: 'T-shirt',
//         imgPaths: ['assets/images/clothes1.jpg'],
//         sizes: ['1-2 Y', '2-3 Y', '3-4 Y', '4-5 Y'],
//         colors: ['Black', 'White', 'Blue', 'Orange'],
//       ),
//       Product(
//         title: 'T-shirt',
//         imgPaths: ['assets/images/clothes3.jpg'],
//         sizes: ['1-2 Y', '2-3 Y', '3-4 Y', '4-5 Y'],
//         colors: ['Black', 'White', 'Blue', 'Orange'],
//       ),
//     ],
//   ),
//   Category(
//     name: 'Accessories',
//     id: '2',
//     products: [
//       Product(
//         title: 'Watch',
//         imgPaths: ['assets/images/accessories1.jpg'],
//         sizes: ['1-2 Y', '2-3 Y', '3-4 Y', '4-5 Y'],
//         colors: ['Black', 'White', 'Blue', 'Orange'],
//       ),
//       Product(
//         title: 'Watch',
//         imgPaths: ['assets/images/accessories2.jpg'],
//         sizes: ['1-2 Y', '2-3 Y', '3-4 Y', '4-5 Y'],
//         colors: ['Black', 'White', 'Blue', 'Orange'],
//       ),
//       Product(
//         title: 'Watch',
//         imgPaths: ['assets/images/accessories1.jpg'],
//         sizes: ['1-2 Y', '2-3 Y', '3-4 Y', '4-5 Y'],
//         colors: ['Black', 'White', 'Blue', 'Orange'],
//       ),
//       Product(
//         title: 'Watch',
//         imgPaths: ['assets/images/accessories2.jpg'],
//         sizes: ['1-2 Y', '2-3 Y', '3-4 Y', '4-5 Y'],
//         colors: ['Black', 'White', 'Blue', 'Orange'],
//       ),
//     ],
//   ),
//   Category(
//     name: 'Shoes',
//     id: '3',
//     products: [
//       Product(
//         title: 'Shoes',
//         imgPaths: ['assets/images/shoes1.jpg'],
//         sizes: ['1-2 Y', '2-3 Y', '3-4 Y', '4-5 Y'],
//         colors: ['Black', 'White', 'Blue', 'Orange'],
//       ),
//       Product(
//         title: 'Shoes',
//         imgPaths: ['assets/images/shoes2.jpg'],
//         sizes: ['1-2 Y', '2-3 Y', '3-4 Y', '4-5 Y'],
//         colors: ['Black', 'White', 'Blue', 'Orange'],
//       ),
//       Product(
//         title: 'Shoes',
//         imgPaths: ['assets/images/shoes3.jpg'],
//         sizes: ['1-2 Y', '2-3 Y', '3-4 Y', '4-5 Y'],
//         colors: ['Black', 'White', 'Blue', 'Orange'],
//       ),
//       Product(
//         title: 'Shoes',
//         imgPaths: ['assets/images/shoes1.jpg'],
//         sizes: ['1-2 Y', '2-3 Y', '3-4 Y', '4-5 Y'],
//         colors: ['Black', 'White', 'Blue', 'Orange'],
//       ),
//     ],
//   ),
// ];
