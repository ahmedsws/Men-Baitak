import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:men_baitak/features/bag/presentation/pages/bag_page.dart';
import 'package:men_baitak/features/category/presentation/pages/details_page/details_page.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  const BaseAppBar({
    @required this.title,
    this.icon,
  });

  final String title;
  final IconButton icon;

  @override
  Widget build(BuildContext context) {
    final aspectRatio = MediaQuery.of(context).size.aspectRatio;
    Color primaryColor = Theme.of(context).primaryColor;
    return AppBar(
      title: Text(
        title,
        style: GoogleFonts.indieFlower(
          fontWeight: FontWeight.bold,
          color: primaryColor,
          fontSize: aspectRatio * 35,
        ),
      ),
      centerTitle: true,
      elevation: 0.0,
      backgroundColor: Theme.of(context).accentColor,
      actions: [
        icon ??
            IconButton(
              icon: FaIcon(FontAwesomeIcons.shoppingBag),
              color: primaryColor,
              iconSize: aspectRatio * 35,
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => BagPage()));
              },
            ),
      ],
      iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}
