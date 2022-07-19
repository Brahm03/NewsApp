import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

abstract class IconConst {
  static SvgPicture homeRed = SvgPicture.asset('assets/icons/home_red.svg');
  static SvgPicture home = SvgPicture.asset('assets/icons/home.svg');
  static SvgPicture profileRed =
      SvgPicture.asset('assets/icons/profile_red.svg');
  static SvgPicture profile = SvgPicture.asset('assets/icons/profile.svg');
  static SvgPicture favorite = SvgPicture.asset('assets/icons/favorite.svg');
  static SvgPicture favoriteRed =
      SvgPicture.asset('assets/icons/favorite_red.svg');
  static SvgPicture search = SvgPicture.asset('assets/icons/search.svg');
  static SvgPicture notification =
      SvgPicture.asset('assets/icons/notification.svg');
  static const rightarrow = CupertinoIcons.chevron_right;
}
