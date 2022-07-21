import 'package:flutter/material.dart';
import 'package:newsapp/core/constants/icons/iconConst.dart';
import 'package:newsapp/screens/view/home/widget/searchBar.dart';

class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(
        children: [
          SearchBarWidget(text: '', icon: Icon(IconConst.x))
        ],
      )),
    );
  }
}
