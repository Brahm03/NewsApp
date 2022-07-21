import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsapp/core/components/decorations/boxdecotions.dart';
import 'package:newsapp/core/constants/color/colorConst.dart';
import 'package:newsapp/core/constants/font/fontStyleConst.dart';
import 'package:newsapp/core/constants/radius/radiuConst.dart';

class SearchBarWidget extends StatelessWidget {
  final String text;
  final Widget icon;
  final double width;
  final double height;
  const SearchBarWidget({
    required this.text,
    required this.icon,
    required this.width,
    required this.height,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
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
