import 'dart:ui';

import 'package:flutter/material.dart';

// Colors

const PRIMARY_COLOR = Color(0xff353535);
const SECONDARY_COLOR = Color(0xffc3a885);
const TERTIARY_COLOR = Color(0xffd1d1d1);

class YVColors {
  Color primary = PRIMARY_COLOR;
  Color secondary = SECONDARY_COLOR;
  Color tertiary = TERTIARY_COLOR;

  MaterialColor primaryMaterial =
  MaterialColor(PRIMARY_COLOR.value, <int, Color>{
    50: Color(0xFFebebeb),
    100: Color(0xFFd7d7d7),
    200: Color(0xFFc2c2c2),
    300: Color(0xFFaeaeae),
    400: Color(0xFF9a9a9a),
    500: Color(0xFF868686),
    600: Color(0xFF727272),
    700: Color(0xFF5d5d5d),
    800: Color(0xFF494949),
    900: Color(PRIMARY_COLOR.value),
  });

  MaterialColor secondaryMaterial =
  MaterialColor(SECONDARY_COLOR.value, <int, Color>{
    50: Color(0xFFf9f6f3),
    100: Color(0xFFf3eee7),
    200: Color(0xFFede5da),
    300: Color(0xFFe7dcce),
    400: Color(0xFFe1d4c2),
    500: Color(0xFFdbcbb6),
    600: Color(0xFFd5c2aa),
    700: Color(0xFFcfb99d),
    800: Color(0xFFc9b191),
    900: Color(SECONDARY_COLOR.value),
  });
}