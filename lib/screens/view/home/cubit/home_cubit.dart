import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapp/screens/state/state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeState());

  static Future getData() async {
    try {
      var data = await FirebaseFirestore.instance.collection('news').get();
    } catch (e) {
      debugPrint('ERROR >>>> $e');
    }
  }
}
