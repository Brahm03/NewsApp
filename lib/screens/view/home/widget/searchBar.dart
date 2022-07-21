import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:newsapp/core/components/decorations/boxdecotions.dart';
import 'package:newsapp/core/constants/color/colorConst.dart';
import 'package:newsapp/core/constants/font/fontStyleConst.dart';
import 'package:newsapp/core/constants/radius/radiuConst.dart';

class SearchBarWidget extends StatelessWidget {
  final String text;
  final Widget icon;
  const SearchBarWidget({
    required this.text,
    required this.icon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 296.sp,
      height: 32.sp,
      padding: EdgeInsets.symmetric(horizontal: 15.sp),
      decoration: BoxDecorations.boxALLdecorations(
          borderRadius: RadiuConst.large, bordercolor: ColorConst.grey),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
             text,
            style: FontStyles.headline6s,
          ),
          icon
        ],
      ),
    );
  }
}
