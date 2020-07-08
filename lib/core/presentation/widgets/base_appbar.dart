import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  const BaseAppBar({
    @required this.appBar,
    @required this.title,
  });

  final AppBar appBar;
  final String title;

  @override
  Widget build(BuildContext context) {
    final aspectRatio = MediaQuery.of(context).size.aspectRatio;
    Color accentColor = Theme.of(context).primaryColor;
    return AppBar(
      title: Text(
        title,
        style: GoogleFonts.indieFlower(
          fontWeight: FontWeight.bold,
          color: accentColor,
          fontSize: aspectRatio * 35,
        ),
      ),
      centerTitle: true,
      elevation: 0.0,
      backgroundColor: Theme.of(context).accentColor,
      actions: [
        IconButton(
          icon: FaIcon(FontAwesomeIcons.search),
          color: accentColor,
          iconSize: aspectRatio * 35,
          onPressed: () {},
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);
}
