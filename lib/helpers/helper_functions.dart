import 'package:flutter/material.dart';

class HelperFunctions {
  // is dark mode active
  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

  // screen height
  static double screenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  // screen width
  static double screenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }
}
