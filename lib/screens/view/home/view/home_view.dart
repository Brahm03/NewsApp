import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsapp/core/components/decorations/boxdecotions.dart';
import 'package:newsapp/core/constants/color/colorConst.dart';
import 'package:newsapp/core/constants/radius/radiuConst.dart';
import 'package:newsapp/extension/sizeExtension.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: 296.sp,
              height: 32.sp,
              decoration: BoxDecorations.boxALLdecorations(borderRadius: RadiuConst.large, bordercolor: ColorConst.grey),
            )
          ],
        ),
      ),
    );
  }
}
