import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class DataService {
  static final DataService _instance = DataService.init();
  static DataService get instance => _instance;
  DataService.init();

  List dataList = [];
  Future<List<dynamic>> getData() async {
    try {
      var data = await FirebaseFirestore.instance.collection('news').get();
      dataList = data.docs;
      debugPrint(dataList.length.toString());
      debugPrint(dataList[1]['news'][0]['title'].toString());
      return dataList;
    } catch (e) {
      debugPrint('ERROR >>>> $e');
      return ['error'];
    }
  }
}
