import 'package:flutter/material.dart';

showToastMessage(String message, context, {bool isError = false}) {
  SnackBar snackBar = SnackBar(
      duration: const Duration(milliseconds: 1500),
      backgroundColor: isError ? Colors.red : Colors.green,
      content: Text(message));
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
