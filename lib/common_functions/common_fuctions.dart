import 'package:flutter/material.dart';

class CommonFunctions {
  static Future<void> hideKeyboard() async {
    FocusManager.instance.primaryFocus?.unfocus();
    await Future.delayed(const Duration(milliseconds: 300));
  }
}
