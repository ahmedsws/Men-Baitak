import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  const BaseAppBar({
    @required this.title,
  });

  final String title;

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
        IconButton(
          icon: FaIcon(FontAwesomeIcons.search),
          color: primaryColor,
          iconSize: aspectRatio * 35,
          onPressed: () {},
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}
