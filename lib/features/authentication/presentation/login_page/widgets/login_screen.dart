import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({this.title, this.body});
  final String title;
  final Widget body;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: body,
    );
  }
}
