import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:men_baitak/core/presentation/widgets/base_appbar.dart';

class NavigationBase extends StatefulWidget {
  const NavigationBase({
    @required this.tabs,
  });

  final List<StatelessWidget> tabs;

  @override
  _NavigationBaseState createState() => _NavigationBaseState();
}

class _NavigationBaseState extends State<NavigationBase> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;
    final accentColor = Theme.of(context).accentColor;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: BaseAppBar(
        title: 'Men Baitak',
      ),
      body: widget.tabs[_selectedIndex],
      bottomNavigationBar: Material(
        clipBehavior: Clip.antiAlias,
        elevation: 10,
        shadowColor: accentColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        child: BottomNavyBar(
          backgroundColor: accentColor,
          selectedIndex: _selectedIndex,
          showElevation: false, // use this to remove appBar's elevation
          onItemSelected: (index) => setState(() {
            _selectedIndex = index;
          }),
          items: [
            BottomNavyBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
              activeColor: primaryColor,
            ),
            BottomNavyBarItem(
                icon: Icon(Icons.category),
                title: Text('Categories'),
                activeColor: primaryColor),
            BottomNavyBarItem(
                icon: Icon(Icons.card_giftcard),
                title: Text('Bag'),
                activeColor: primaryColor),
            BottomNavyBarItem(
                icon: Icon(Icons.favorite),
                title: Text('Favorites'),
                activeColor: primaryColor),
            BottomNavyBarItem(
                icon: Icon(Icons.account_circle),
                title: Text('Account'),
                activeColor: primaryColor),
          ],
        ),
      ),
    );
  }
}
