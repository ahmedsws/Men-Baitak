import 'package:flutter/material.dart';

class CompanyIcon extends StatelessWidget {
  const CompanyIcon({this.icon, this.onPressed});
  final IconData icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: IconButton(
        color: Theme.of(context).accentColor,
        icon: Icon(
          icon,
        ),
        onPressed: onPressed,
      ),
    );
  }
}
