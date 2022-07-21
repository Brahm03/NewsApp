import 'package:flutter/material.dart';
import 'package:newsapp/core/constants/color/colorConst.dart';
import 'package:newsapp/core/constants/font/fontSizeConst.dart';

abstract class FontStyles {
  static const TextStyle headline1s =
      TextStyle(fontSize: FontSizeConst.extraLarge);
  static const TextStyle headline2s = TextStyle(fontSize: FontSizeConst.mlarge);
  static const TextStyle headline3s = TextStyle(fontSize: FontSizeConst.large);
  static const TextStyle headline4s =
      TextStyle(fontSize: FontSizeConst.mmedium);
  static const TextStyle headline5s = TextStyle(fontSize: FontSizeConst.medium);
  static const TextStyle headline5sbold = TextStyle(fontSize: FontSizeConst.medium, fontWeight: FontWeight.bold);
  static const TextStyle headline5sboldWhite = TextStyle(fontSize: FontSizeConst.medium, fontWeight: FontWeight.bold,color: ColorConst.white);
  static const TextStyle headline6s = TextStyle(fontSize: FontSizeConst.msmall);
  static const TextStyle headline6swhite = TextStyle(fontSize: FontSizeConst.msmall, color: ColorConst.white);
  static const TextStyle headline6sboldWhite = TextStyle(fontSize: FontSizeConst.msmall, fontWeight: FontWeight.bold,color: ColorConst.white);
  static const TextStyle headline6sblue = TextStyle(fontSize: FontSizeConst.msmall, color: ColorConst.kSecondary);
  static const TextStyle headline7s = TextStyle(fontSize: FontSizeConst.small);
  static const TextStyle headline7swhite = TextStyle(fontSize: FontSizeConst.small, color: ColorConst.white, overflow: TextOverflow.ellipsis);
}
