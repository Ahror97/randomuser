import 'package:flutter/material.dart';
import 'package:randomuser/screens/homeScreen.dart';

Route ongenerateRoute(settings) {
  switch (settings.name) {
    case HomeScreen.routeName:
      return MaterialPageRoute(builder: (context) => HomeScreen());

    default:
      return MaterialPageRoute(
          builder: (context) => Scaffold(
                body: Center(
                  child: Text('Page not found'),
                ),
              ));
  }
}
