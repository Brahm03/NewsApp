import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsapp/core/components/decorations/boxdecotions.dart';
import 'package:newsapp/core/components/navigation/navigation_service.dart';
import 'package:newsapp/core/constants/color/colorConst.dart';
import 'package:newsapp/core/constants/font/fontStyleConst.dart';
import 'package:newsapp/core/constants/icons/iconConst.dart';
import 'package:newsapp/core/constants/radius/radiuConst.dart';
import 'package:newsapp/extension/sizeExtension.dart';

class InfoView extends StatelessWidget {
  final Map data;
  const InfoView({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){}, child: IconConst.heart,),
      body: SizedBox(
        height: context.h,
        child: Stack(
          children: [
            SizedBox(
              width: context.w,
              height: 400.sp,
              child: Image.network(
                data['pic'],
                fit: BoxFit.cover,
                height: 400.sp,
              ),
            ),
            Positioned(
                top: 30.sp,
                left: 20.sp,
                child: ClipRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                    child: InkWell(
                      onTap: () => NavigationService.instance.pop(),
                      child: Container(
                        height: 42.sp,
                        width: 42.sp,
                        alignment: Alignment.center,
                        decoration: BoxDecorations.boxALLdecorations(
                            borderRadius: RadiuConst.small,
                            color: ColorConst.grey.withOpacity(0.5)),
                        child: IconConst.leftArrow,
                      ),
                    ),
                  ),
                )),
            Positioned(
              bottom: 0,
              child: Container(
                padding: EdgeInsets.only(top: 88.sp,left: 15.sp, right: 15.sp),
                height: 438.sp,
                width: context.w,
                decoration: BoxDecorations.boxTopdecorations(
                  color: ColorConst.white,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text(data['info'].toString())
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
                top: 295.sp,
                left: 43.sp,
                child: ClipRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          vertical: 16.sp, horizontal: 32.sp),
                      width: 311.sp,
                      height: 141.sp,
                      decoration: BoxDecorations.boxALLdecorations(
                          color: ColorConst.grey.withOpacity(0.5)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 30.sp),
                          Text(
                            data['title'],
                            style: FontStyles.headline6sbold,
                          ),
                          const Spacer(),
                          Text(
                            'published by ${data['by']}',
                            style: FontStyles.headline6s,
                          )
                        ],
                      ),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
