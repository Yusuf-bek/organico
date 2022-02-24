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
      title: 'Organico',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      onGenerateRoute: (RouteSettings settings)=> GenerateRoute.generateRoute(settings),
    );
  }
}

