import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:your_vocabulary/app.dart';

class Toast {
  Toast();

  void success(String message, [int seconds = 3]) {
    _showToast(message, Theme.of(YourVocabulary.mainContext).secondaryHeaderColor, seconds);
  }

  void warn(String message, [int seconds = 3]) {
    _showToast(message, Colors.orangeAccent, seconds);
  }

  void error(String message, [int seconds = 3]) {
    _showToast(message, Theme.of(YourVocabulary.mainContext).errorColor, seconds);
  }

  void _showToast(String message, Color snackColor, int seconds) {
    Flushbar(
      message: message,
      backgroundColor: snackColor,
      duration: Duration(seconds: seconds),
    )..show(YourVocabulary.mainContext);
  }
}
