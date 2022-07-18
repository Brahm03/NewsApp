import 'package:flutter/material.dart';
import 'package:newsapp/screens/mainview.dart';

class Allroutes {
  Route? ongenerateRoute(RouteSettings settings) {
    var args = settings.arguments;
    switch (settings.name) {
      case '/':
        return pageReturner(const MainView());
    }
  }

  pageReturner(Widget page) => MaterialPageRoute(builder: (_) => page);
}
