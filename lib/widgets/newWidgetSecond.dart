import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsapp/core/components/decorations/boxdecotions.dart';
import 'package:newsapp/core/constants/font/fontStyleConst.dart';

class NewsWidgetSecond extends StatelessWidget {
  final String pic;
  final String title;
  final String by;
  const NewsWidgetSecond({Key? key,
  required this.pic, required this.title,required this.by}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 345.sp,
      height: 128.sp,
      padding: EdgeInsets.symmetric(vertical: 8.sp, horizontal: 16.sp),
      decoration: BoxDecorations.boxAlldecorationsWithPic(pic),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: FontStyles.headline6sboldWhite,),
          const Spacer(),
          Text(by, style: FontStyles.headline6swhite,),
        ],
      ),
    );
  }
}
