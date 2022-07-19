import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:newsapp/core/constants/icons/iconConst.dart';
import 'package:newsapp/screens/state/state.dart';

class MainCubit extends Cubit<MainState> {
  MainCubit() : super(HomeState());

  List<SvgPicture> icons = [
    IconConst.home,
    IconConst.favorite,
    IconConst.profile,
  ];
  List<String> titles = ['Home', 'Favorite', 'Profile'];

  changePage(int index) {
    switch (index) {
      case 0:
        return emit(HomeState());
      case 1:
        return emit(FavoriteState());
      case 2:
        return emit(ProfileState());  
    }
  }
}
