import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  const LoginButton(this.buttonText, {@required this.onPressed});
  final String buttonText;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    final Color accentColor = Theme.of(context).accentColor;
    return RaisedButton(
      onPressed: onPressed,
      color: accentColor,
      textColor: Colors.white,
      elevation: 4,
      padding: EdgeInsets.symmetric(horizontal: 110, vertical: 14),
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        buttonText,
      ),
    );
  }
}
