import 'package:flutter/material.dart';
import 'package:newsapp/screens/mainview.dart';

class Allroutes {
  static final Allroutes _instance = Allroutes.init();
  static Allroutes get instance => _instance;
  Allroutes.init();

  Route? ongenerateRoute(RouteSettings settings) {
    var args = settings.arguments;
    switch (settings.name) {
      case '/':
        return pageReturner(const MainView());
    }
  }

  pageReturner(Widget page) => MaterialPageRoute(builder: (_) => page);
}
