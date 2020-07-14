import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';

abstract class Snackbar {
  static void showError(BuildContext context, String errorMessage) => Flushbar(
        titleText: Text(
          'Error',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        messageText: Text(
          errorMessage,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        icon: Icon(Icons.info, color: Colors.white),
        duration: Duration(seconds: 4),
        backgroundColor: Colors.red,
      ).show(context);
}
