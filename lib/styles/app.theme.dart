import 'package:flutter/material.dart';
import 'package:your_vocabulary/styles/theme/yv_colors.dart';
import 'package:your_vocabulary/styles/theme/yv_font.dart';

class YVTheme {
  static YVFont font = YVFont();
  static YVColors colors = YVColors();
}

class YVThemeData {
  static ThemeData getTheme() {
    return ThemeData(
        fontFamily: YVTheme.font.fontFamily,
        primaryColor: YVTheme.colors.primary,
        accentColor: YVTheme.colors.secondary,
        secondaryHeaderColor: YVTheme.colors.secondaryMaterial,
        errorColor: Colors.red);
  }
}
