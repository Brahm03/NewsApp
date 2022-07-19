import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapp/screens/cubit/cubit.dart';
import 'package:newsapp/screens/state/state.dart';
import 'package:newsapp/screens/view/home/view/home_view.dart';
import 'package:newsapp/widgets/bottomNavigation.dart';

class MainView extends StatelessWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (_) => MainCubit(), child: scafold());
  }

  Scaffold scafold() {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: const NavigationBarWidget(),
      body: BlocConsumer<MainCubit, MainState>(
        listener: (context, state) {},
        builder: (context, state) {
          if (state is HomeState) {
            return HomeView();
          } else if (state is FavoriteState) {
            return const Center(
              child: Text('Favorite'),
            );
          } else if (state is ProfileState) {
            return const Center(
              child: Text('Profile'),
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
