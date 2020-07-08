import 'package:flutter/material.dart';
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
    Color accentColor = Theme.of(context).primaryColor;
    return AppBar(
      title: Text(
        title,
        style: GoogleFonts.indieFlower(
          fontWeight: FontWeight.bold,
          color: accentColor,
          fontSize: 17,
        ),
      ),
      centerTitle: true,
      elevation: 0.0,
      backgroundColor: Theme.of(context).accentColor,
      actions: [
        IconButton(
          icon: Icon(Icons.card_giftcard),
          color: accentColor,
          onPressed: () {},
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);
}
