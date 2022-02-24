import 'package:flutter/material.dart';
import 'package:organico/screens/home/home_page.dart';
import 'package:organico/screens/welcome_page/welcome_page.dart';

class GenerateRoute {
  static generateRoute(RouteSettings settings) {
    final  _arguments = settings.arguments;

    switch (settings.name) {
      case "/":
        return MaterialPageRoute(
          builder: (context) => const WelcomPage(),
        );

      case "/homepage":
        return MaterialPageRoute(
          builder: (context) => const HomePage(),
        );
    }
  }
}
