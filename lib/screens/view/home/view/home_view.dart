import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsapp/core/constants/PM/PMconst.dart';
import 'package:newsapp/core/constants/color/colorConst.dart';
import 'package:newsapp/core/constants/font/fontStyleConst.dart';
import 'package:newsapp/core/constants/icons/iconConst.dart';
import 'package:newsapp/core/constants/radius/radiuConst.dart';
import 'package:newsapp/screens/view/home/cubit/home_cubit.dart';
import 'package:newsapp/screens/view/home/widget/searchBar.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeCubit.getData();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: PMconst.small,
          child: Column(
            children: [
              Row(
                children: [
                  const SearchBarWidget(),
                  const Spacer(),
                  CircleAvatar(
                    radius: RadiuConst.medium,
                    backgroundColor: ColorConst.kPrimary,
                    child: IconConst.notification,
                  )
                ],
              ),
              SizedBox(height: 18.sp),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                  Text('Latest News', style: FontStyles.headline5sbold,),
                  Row(
                    children: [
                      Text('See all', style: FontStyles.headline6sblue,),
                      Icon(IconConst.rightarrow, color: ColorConst.kSecondary,)
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
