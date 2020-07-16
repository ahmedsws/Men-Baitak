import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomBar extends StatelessWidget {
  const BottomBar();

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: true,
      items: [
        BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.home),
          title: Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.bars),
          title: Text(''),
        ),
        BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.shoppingBag),
          title: Text(' '),
        ),
        BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.heart),
          title: Text(' '),
        ),
        BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.user),
          title: Text(' '),
        ),
      ],
    );
  }
}
