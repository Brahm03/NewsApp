import 'package:flutter/material.dart';
import 'package:newsapp/core/constants/font/fontSizeConst.dart';

abstract class FontStyles {
  static const TextStyle headline1s =
      TextStyle(fontSize: FontSizeConst.extraLarge);
  static const TextStyle headline2s = TextStyle(fontSize: FontSizeConst.mlarge);
  static const TextStyle headline3s = TextStyle(fontSize: FontSizeConst.large);
  static const TextStyle headline4s =
      TextStyle(fontSize: FontSizeConst.mmedium);
  static const TextStyle headline5s = TextStyle(fontSize: FontSizeConst.medium);
  static const TextStyle headline6s = TextStyle(fontSize: FontSizeConst.msmall);
  static const TextStyle headline7s = TextStyle(fontSize: FontSizeConst.small);
}
