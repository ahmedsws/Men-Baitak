import 'package:flutter/material.dart';

class LoginField extends StatelessWidget {
  const LoginField({this.controller, this.obscure = false, this.hint});
  final TextEditingController controller;
  final bool obscure;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: EdgeInsets.symmetric(vertical: 14, horizontal: 25),
      child: TextField(
        controller: controller,
        obscureText: obscure,
        decoration: InputDecoration(
          hintText: hint,
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 14),
        ),
      ),
    );
  }
}
