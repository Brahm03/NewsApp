import 'package:flutter/material.dart';
import 'package:newsapp/core/constants/PM/PMconst.dart';
import 'package:newsapp/core/constants/color/colorConst.dart';
import 'package:newsapp/core/constants/icons/iconConst.dart';
import 'package:newsapp/core/constants/radius/radiuConst.dart';
import 'package:newsapp/screens/view/home/widget/searchBar.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
