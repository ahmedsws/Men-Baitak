import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:men_baitak/core/presentation/widgets/navigation_base.dart';
import 'package:men_baitak/features/categories_page/presentation/categories_page.dart';

class AppBase extends StatelessWidget {
  final tabs = [
    Placeholder(),
    CategoriesPage(),
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
      home: NavigationBase(tabs: tabs),
    );
  }
}
