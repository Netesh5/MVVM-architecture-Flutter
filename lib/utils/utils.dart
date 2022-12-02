import 'package:flutter/material.dart';

class utlis {
  showSnakbar(String message, BuildContext context) {
    final snackbar = SnackBar(
      behavior: SnackBarBehavior.floating,
      elevation: 0,
      content: Text(message),
      backgroundColor: Colors.redAccent,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }
}
