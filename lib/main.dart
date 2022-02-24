import 'package:flutter/material.dart';
import 'package:organico/router/my_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Organico',
      theme: ThemeData(
        backgroundColor: Colors.white,
        primaryColor: Colors.white,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        appBarTheme: const AppBarTheme(
          color: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
        buttonTheme: const ButtonThemeData(
          buttonColor: Colors.black,
        ),
      ),
      initialRoute: "/",
      onGenerateRoute: (RouteSettings settings) =>
          GenerateRoute.generateRoute(settings),
    );
  }
}
