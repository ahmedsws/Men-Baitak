import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouselWithIndicator extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CarouselWithIndicatorState();
  }
}

class _CarouselWithIndicatorState extends State<CarouselWithIndicator> {
  int _current = 0;

  final imgList = [
    Card(
      child: Image(
        image: AssetImage('assets/images/featured1.jpg'),
        fit: BoxFit.cover,
      ),
    ),
    Card(
      child: Image(
        image: AssetImage('assets/images/featured2.jpg'),
        fit: BoxFit.cover,
      ),
    ),
    Card(
      child: Image(
        image: AssetImage('assets/images/featured3.jpg'),
        fit: BoxFit.cover,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      CarouselSlider(
        items: imgList,
        options: CarouselOptions(
            autoPlay: true,
            enlargeCenterPage: true,
            aspectRatio: 2.5,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            }),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: imgList.map((img) {
          int index = imgList.indexOf(img);
          return Container(
            width: 8.0,
            height: 8.0,
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: _current == index
                  ? Theme.of(context).accentColor
                  : Colors.lightBlue[100],
            ),
          );
        }).toList(),
      ),
    ]);
  }
}
