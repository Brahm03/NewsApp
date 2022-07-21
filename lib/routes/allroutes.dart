import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/screens/mainview.dart';
import 'package:newsapp/screens/view/search/view/search_view.dart';

class Allroutes {
  static final Allroutes _instance = Allroutes.init();
  static Allroutes get instance => _instance;
  Allroutes.init();

  Route? ongenerateRoute(RouteSettings settings) {
    var args = settings.arguments;
    switch (settings.name) {
      case '/':
        return pageReturner(const MainView());
      case '/search_view':
        return pageReturner(SearchView());
    }
  }

  pageReturner(Widget page) => CupertinoPageRoute(builder: (_) => page);
}
