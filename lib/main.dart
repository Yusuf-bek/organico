import 'package:flutter/material.dart';
import 'package:organico/core/theme/my_light_dark_theme.dart';
import 'package:organico/router/my_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final GenerateRoute routClassInctance = GenerateRoute();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Organico',
      theme: MyTheme.getMyLightTheme(),
      //! Change this inital route after finishing
      initialRoute: "/newregistrationscreen",
      
      onGenerateRoute: routClassInctance.generateRoute,
    );
  }
}
