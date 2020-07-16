import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({
    @required this.text,
    @required this.textStyle,
    this.onPressed,
  });
  final String text;
  final TextStyle textStyle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: textStyle.apply(
          color: Theme.of(context).primaryColor,
        ),
      ),
      color: Theme.of(context).accentColor,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      padding: EdgeInsets.symmetric(horizontal: 110, vertical: 10),
    );
  }
}
