import 'package:flutter/material.dart';
import 'package:newsapp/core/constants/color/colorConst.dart';

class Allthemes {
  static final Allthemes _instance = Allthemes.init();
  static Allthemes get instance => _instance;
  Allthemes.init();

  ThemeData get apptheme => ThemeData(
    useMaterial3: true,
    colorScheme: const ColorScheme.light(
      primary: ColorConst.kPrimary,
      brightness: Brightness.light
    )
  );
}