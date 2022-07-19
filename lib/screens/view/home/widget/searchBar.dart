
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsapp/core/components/decorations/boxdecotions.dart';
import 'package:newsapp/core/constants/color/colorConst.dart';
import 'package:newsapp/core/constants/font/fontStyleConst.dart';
import 'package:newsapp/core/constants/icons/iconConst.dart';
import 'package:newsapp/core/constants/radius/radiuConst.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 296.sp,
      height: 32.sp,
      padding: EdgeInsets.symmetric(horizontal: 15.sp),
      decoration: BoxDecorations.boxALLdecorations(borderRadius: RadiuConst.large, bordercolor: ColorConst.grey),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text('Dogecoin to the Moon...', style: FontStyles.headline6s,),
          IconConst.search
        ],
      ),
    );
  }
}
