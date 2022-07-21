import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapp/screens/state/state.dart';
import 'package:newsapp/service/data_service.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit() : super(SearchState());

  Set temp = {};

  searchIt(String text) {
    temp.clear();
    for (var i = 0;
        i < DataService.instance.dataList[currentcatog]['news'].length;
        i++) {
      if (text.isEmpty) {
        temp.clear();
        emit(SearchState());
      } else if (DataService.instance.dataList[currentcatog]['news'][i]['title']
          .toString()
          .toLowerCase()
          .contains(text.toString().toLowerCase())) {
        debugPrint(
            DataService.instance.dataList[currentcatog]['news'][i]['title']);
        temp.add(DataService.instance.dataList[currentcatog]['news'][i]);
        emit(SearchState());
      }
    }
  }

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
    emit(SearchState());
  }
}
