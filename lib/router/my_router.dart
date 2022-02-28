import 'package:flutter/material.dart';
import 'package:organico/authentication/sign_in/sign_in_screen.dart';
import 'package:organico/screens/home_screen/home_screen.dart';
import 'package:organico/screens/splash_screen/splash_screen.dart';

class GenerateRoute {
   Route? generateRoute(RouteSettings settings) {
    final _arguments = settings.arguments;

    switch (settings.name) {
      case "/":
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
        );

      case "/signinscreen":
        return MaterialPageRoute(
          builder: (context) => const SignInScreen(),
        );

      case "/homescreen":
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );
    }
  }
}
