import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:men_baitak/features/authentication/application/blocs/auth/auth_bloc.dart';
import 'package:men_baitak/features/bag/application/blocs/bloc/bag_bloc.dart';
import 'package:men_baitak/features/category/infrastructure/models/product_model.dart';
import 'package:men_baitak/features/category/presentation/pages/details_page/details_page.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({this.product});

  final ProductModel product;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => BlocProvider(
                  create: (context) =>
                      BagBloc(authBloc: BlocProvider.of<AuthBloc>(context)),
                  child: DetailsPage(
                    product: product,
                  ),
                )));
      },
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Material(
          shadowColor: Theme.of(context).accentColor,
          elevation: 1.5,
          child: Image(
            height: height * .33,
            image: NetworkImage(product.imgPaths[0]),
            fit: BoxFit.contain,
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          clipBehavior: Clip.antiAlias,
        ),
      ),
    );
  }
}
