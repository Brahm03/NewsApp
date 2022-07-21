import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsapp/core/constants/PM/PMconst.dart';
import 'package:newsapp/core/constants/color/colorConst.dart';
import 'package:newsapp/core/constants/font/fontStyleConst.dart';
import 'package:newsapp/core/constants/icons/iconConst.dart';
import 'package:newsapp/core/constants/radius/radiuConst.dart';
import 'package:newsapp/extension/sizeExtension.dart';
import 'package:newsapp/screens/state/state.dart';
import 'package:newsapp/screens/view/home/cubit/home_cubit.dart';
import 'package:newsapp/screens/view/home/widget/NewsWidget.dart';
import 'package:newsapp/screens/view/home/widget/searchBar.dart';
import 'package:newsapp/service/data_service.dart';
import 'package:newsapp/widgets/newWidgetSecond.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DataService.instance.getData();
    return BlocProvider(create: (_) => HomeCubit(), child: scafold());
  }

  Scaffold scafold() {
    return Scaffold(
      body: FutureBuilder(
          future: DataService.instance.getData(),
          builder: (context, AsyncSnapshot<List> snapshot) {
            if (!snapshot.hasData) {
              return const Center(child: CircularProgressIndicator.adaptive());
            } else if (snapshot.hasError) {
              return const Center(
                child: Text(
                  'error',
                  style: FontStyles.headline5sbold,
                ),
              );
            } else {
              var data = snapshot.data![context.watch<HomeCubit>().currentcatog]
                  ['news'];
              return BlocConsumer<HomeCubit, HomeState>(
                builder: (context, state) {
                  return SafeArea(
                      child: Padding(
                    padding: PMconst.small,
                    child: SizedBox(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                SearchBarWidget(text: 'Dogecoin to the Moon...',icon: IconConst.search,),
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
                              children: [
                                const Text(
                                  'Latest News',
                                  style: FontStyles.headline5sbold,
                                ),
                                Row(
                                  children: const [
                                    Text(
                                      'See all',
                                      style: FontStyles.headline6sblue,
                                    ),
                                    Icon(
                                      IconConst.rightarrow,
                                      color: ColorConst.kSecondary,
                                    )
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 16.sp),
                            SizedBox(
                              height: 245.sp,
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: data.length,
                                  itemBuilder: (_, __) {
                                    return Padding(
                                      padding: EdgeInsets.only(left: 10.sp),
                                      child: NewsWidget(
                                          index: __,
                                          by: data[__]['by'],
                                          subtitle: data[__]['subtitle'],
                                          title: data[__]['title'],
                                          pic: data[__]['pic']),
                                    );
                                  }),
                            ),
                            SizedBox(height: 40.sp),
                            SizedBox(
                              height: 32.sp,
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount:
                                      context.watch<HomeCubit>().catogs.length,
                                  itemBuilder: (_, __) {
                                    return Padding(
                                      padding: EdgeInsets.only(left: 10.sp),
                                      child: InkWell(
                                          onTap: () => context
                                              .read<HomeCubit>()
                                              .changeCatogs(__),
                                          child: Chip(
                                              backgroundColor: context
                                                          .watch<HomeCubit>()
                                                          .currentcatog ==
                                                      __
                                                  ? ColorConst.kPrimary
                                                  : ColorConst.white,
                                              label: Text(
                                                context
                                                    .watch<HomeCubit>()
                                                    .catogs[__],
                                                style: context
                                                            .watch<HomeCubit>()
                                                            .catogs ==
                                                        __
                                                    ? FontStyles.headline5sboldWhite
                                                    : FontStyles.headline5s,
                                              ))),
                                    );
                                  }),
                            ),
                            SizedBox(height: 24.sp),
                            SizedBox(
                              height: context.h,
                              width: context.w,
                              child: ListView.builder(physics: const NeverScrollableScrollPhysics(),itemCount: data.length,itemBuilder: (_, __) {
                                return Padding(
                                  padding: EdgeInsets.only(bottom: 16.sp),
                                  child: NewsWidgetSecond(by: data[__]['by'],title: data[__]['title'],pic: data[__]['pic']),
                                );
                              }),
                            )
                          ],
                        ),
                      ),
                    ),
                  ));
                },
                listener: (BuildContext context, Object? state) {},
              );
            }
          }),
    );
  }
}
