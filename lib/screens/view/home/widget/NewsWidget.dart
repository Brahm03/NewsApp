import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsapp/core/components/decorations/boxdecotions.dart';
import 'package:newsapp/core/constants/color/colorConst.dart';
import 'package:newsapp/core/constants/font/fontStyleConst.dart';
import 'package:newsapp/core/constants/radius/radiuConst.dart';

class NewsWidget extends StatelessWidget {
  final String pic;
  final String by;
  final String title;
  final String subtitle;
  final int index;
  const NewsWidget(
      {required this.by,
      required this.subtitle,
      required this.title,
      required this.index,
      Key? key,
      required this.pic})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.sp),
      height: 240.sp,
      width: 321.sp,
      decoration: BoxDecorations.boxAlldecorationsWithPic(pic),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 80.sp),
          Text(
            'by $by',
            style: FontStyles.headline6sboldWhite,
          ),
          Text(
            title,
            style: FontStyles.headline5sboldWhite,
          ),
          const Spacer(),
          SizedBox(
            child: Text(
              subtitle,
              style: FontStyles.headline7swhite,
            ),
          )
        ],
      ),
    );
  }
}
