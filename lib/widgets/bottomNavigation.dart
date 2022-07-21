import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsapp/core/components/decorations/boxdecotions.dart';
import 'package:newsapp/core/constants/PM/PMconst.dart';
import 'package:newsapp/core/constants/color/colorConst.dart';
import 'package:newsapp/core/constants/radius/radiuConst.dart';
import 'package:newsapp/screens/cubit/cubit.dart';

class NavigationBarWidget extends StatelessWidget {
  const NavigationBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: PMconst.medium,
        margin: PMconst.medium,
        height: 83.sp,
        width: 289.sp,
        alignment: Alignment.center,
        decoration: BoxDecorations.boxALLdecorations(
          color: ColorConst.white,
          borderRadius: RadiuConst.extraLarge,
        ),
        child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            itemBuilder: (_, __) {
              return Padding(
                padding: EdgeInsets.only(left: 34.sp),
                child: InkWell(
                  onTap: () => context.read<MainCubit>().changePage(__),
                  child: Column(
                    children: [
                      context.watch<MainCubit>().icons[__],
                      Text(context.watch<MainCubit>().titles[__])
                    ],
                  ),
                ),
              );
            }));
  }
}
