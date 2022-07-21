import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsapp/core/components/decorations/boxdecotions.dart';
import 'package:newsapp/core/components/navigation/navigation_service.dart';
import 'package:newsapp/core/constants/color/colorConst.dart';
import 'package:newsapp/core/constants/font/fontStyleConst.dart';
import 'package:newsapp/screens/state/state.dart';
import 'package:newsapp/screens/view/search/cubit/cubit_state.dart';
import 'package:newsapp/widgets/newWidgetSecond.dart';

class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (_) => SearchCubit(), child: scafold(context));
  }

  Scaffold scafold(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<SearchCubit, SearchState>(
        builder: (context, state) => SafeArea(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CupertinoSearchTextField(
                onChanged: (text) {
                  context.read<SearchCubit>().searchIt(text);
                },
                decoration:
                    BoxDecorations.boxALLdecorations(color: ColorConst.white),
              ),
              SizedBox(height: 28.sp),
              SizedBox(
                height: 32.sp,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: context.watch<SearchCubit>().catogs.length,
                    itemBuilder: (_, __) {
                      return Padding(
                        padding: EdgeInsets.only(left: 10.sp),
                        child: InkWell(
                            onTap: () =>
                                context.read<SearchCubit>().changeCatogs(__),
                            child: Chip(
                                backgroundColor:
                                    context.watch<SearchCubit>().currentcatog ==
                                            __
                                        ? ColorConst.kPrimary
                                        : ColorConst.white,
                                label: Text(
                                  context.watch<SearchCubit>().catogs[__],
                                  style:
                                      // ignore: unrelated_type_equality_checks
                                      context.watch<SearchCubit>().catogs == __
                                          ? FontStyles.headline5sboldWhite
                                          : FontStyles.headline5s,
                                ))),
                      );
                    }),
              ),
              SizedBox(height: 20.sp),
              Text(
                  '${context.watch<SearchCubit>().temp.length} results for ${context.watch<SearchCubit>().searchedText}'),
              SizedBox(height: 10.sp),
              context.watch<SearchCubit>().catogs.isNotEmpty
                  ? Expanded(
                      child: ListView.builder(
                          itemCount: context.watch<SearchCubit>().temp.length,
                          itemBuilder: (_, __) {
                            return Padding(
                              padding: EdgeInsets.only(bottom: 10.sp),
                              child: InkWell(
                                onTap: () => NavigationService.instance.pushNamed(routeName: '/info_view', args: BlocProvider.of<SearchCubit>(context, listen: false).temp.toList()[__]),
                                child: NewsWidgetSecond(
                                    pic: context
                                        .watch<SearchCubit>()
                                        .temp
                                        .toList()[__]['pic'],
                                    title: context
                                        .watch<SearchCubit>()
                                        .temp
                                        .toList()[__]['title'],
                                    by: context
                                        .watch<SearchCubit>()
                                        .temp
                                        .toList()[__]['by']),
                              ),
                            );
                          }),
                    )
                  : const SizedBox()
            ],
          ),
        )),
      ),
    );
  }
}
