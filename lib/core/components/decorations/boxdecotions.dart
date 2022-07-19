import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsapp/core/constants/radius/radiuConst.dart';

class BoxDecorations {
  static boxALLdecorations({Color bordercolor = Colors.transparent,List<BoxShadow> shadow = const [],Color color = Colors.white, double borderRadius = RadiuConst.medium}) {
    return BoxDecoration(
        boxShadow: shadow,
        border: Border.all(color: bordercolor, width: 0.5.sp),
        color: color, borderRadius: BorderRadius.circular(borderRadius));
  }

  static boxBottomdecarions(Color color) {
    return BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(RadiuConst.medium),
            bottomRight: Radius.circular(RadiuConst.medium)));
  }

  static boxTopdecorations({required Color color}) {
    return BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(RadiuConst.medium),
            topRight: Radius.circular(RadiuConst.medium)));
  }
}
