import 'package:flutter/material.dart';

class CarouselCard extends StatelessWidget {
  const CarouselCard({@required this.imgPath});
  final imgPath;

  @override
  Widget build(BuildContext context) {
    return Material(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 1.5,
      shadowColor: Theme.of(context).accentColor,
      child: Image(
        image: AssetImage(imgPath),
        fit: BoxFit.cover,
      ),
    );
  }
}
