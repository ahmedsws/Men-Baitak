import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:men_baitak/features/authentication/application/blocs/auth/auth_bloc.dart';
import 'package:men_baitak/features/authentication/application/blocs/auth/auth_event.dart';
import 'package:men_baitak/features/authentication/presentation/account_page/account_tab.dart';
import 'package:men_baitak/features/bag/application/blocs/bloc/bag_bloc.dart';
import 'package:men_baitak/features/category/application/blocs/category_bloc/category_bloc.dart';
import 'package:men_baitak/features/category/presentation/pages/categories_page/categories_page.dart';
import 'package:men_baitak/features/category/presentation/pages/home_page/home_page.dart';

import 'widgets/navigation_base.dart';

class AppBase extends StatelessWidget {
  final tabs = [
    HomePage(),
    CategoriesPage(),
    Placeholder(),
    AccountTab(),
  ];

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (_) => AuthBloc()..add(StartApp()),
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
                primaryColor: Colors.white,
                accentColor: Color(0xFF006086),
                textTheme: GoogleFonts.balooChettanTextTheme()),
            home: BlocProvider(
              create: (context) => CategoryBloc()..add(FetchCatgories()),
              child: NavigationBase(tabs: tabs),
            )),
      );
}
