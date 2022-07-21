import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapp/screens/state/state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeState());

  int currentcatog = 0;

  final List<String> catogs = [
    'Arts',
    'Finance',
    'Healthy',
    'Technology',
    'Sports'
  ];

  changeCatogs(int index) {
    currentcatog = index;
    if (currentcatog == 5) {
      currentcatog = 0;
    }
    emit(HomeState());
  }
}
