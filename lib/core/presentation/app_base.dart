import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:men_baitak/features/home/presentation/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBase extends StatefulWidget {
  const AppBase();

  @override
  _AppBaseState createState() => _AppBaseState();
}

class _AppBaseState extends State<AppBase> {
  int _selectedIndex = 0;

  final color = Color(0xFF006086);

  final tabs = [
    HomePage(),
    Placeholder(),
    Placeholder(),
    Placeholder(),
    Placeholder(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.white,
          accentColor: Color(0xFF006086),
          textTheme: GoogleFonts.balooChettanTextTheme()),
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            'Men Baitak',
            style: GoogleFonts.indieFlower(
              fontWeight: FontWeight.bold,
              color: color,
              fontSize: 17,
            ),
          ),
          centerTitle: true,
          elevation: 0.0,
          backgroundColor: Colors.white,
          actions: [
            IconButton(
              icon: Icon(Icons.card_giftcard),
              color: color,
              onPressed: () {},
            ),
          ],
        ),
        body: tabs[_selectedIndex],
        bottomNavigationBar: BottomNavyBar(
          selectedIndex: _selectedIndex,
          showElevation: true, // use this to remove appBar's elevation
          onItemSelected: (index) => setState(() {
            _selectedIndex = index;
          }),
          items: [
            BottomNavyBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
              activeColor: color,
            ),
            BottomNavyBarItem(
                icon: Icon(Icons.category),
                title: Text('Categories'),
                activeColor: color),
            BottomNavyBarItem(
                icon: Icon(Icons.card_giftcard),
                title: Text('Bag'),
                activeColor: color),
            BottomNavyBarItem(
                icon: Icon(Icons.favorite),
                title: Text('Favorites'),
                activeColor: color),
            BottomNavyBarItem(
                icon: Icon(Icons.account_circle),
                title: Text('Account'),
                activeColor: color),
          ],
        ),
      ),
    );
  }
}
