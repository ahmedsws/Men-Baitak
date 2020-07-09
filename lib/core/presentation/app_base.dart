import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:men_baitak/features/category/presentation/pages/home_page/home_page.dart';

import 'widgets/navigation_base.dart';

class AppBase extends StatelessWidget {
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
      home: NavigationBase(tabs: tabs),
    );
  }
}
