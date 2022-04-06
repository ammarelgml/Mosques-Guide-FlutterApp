import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeController extends GetxController {
  ThemeMode get theme => _loadTheme() ? ThemeMode.dark : ThemeMode.light;

  bool _loadTheme() {
    // Implement code to check if there is a saved theme.

    // If there is not, return false to set the light theme as the current theme.
    return false;
  }
}
