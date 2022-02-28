import 'package:flutter/material.dart';
import 'package:organico/router/my_router.dart';
import 'package:organico/theme/generate_material_color.dart';

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
      theme: ThemeData(
        primarySwatch: HexToMaterialColor.buildMaterialColor(
          const Color(0xFF2ECC71),
        ),
        backgroundColor: Colors.white,
        primaryColor: const Color(0xFF2ECC71),
        appBarTheme: const AppBarTheme(
          color: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
        buttonTheme: const ButtonThemeData(
          buttonColor: Colors.green,
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      //! Change this inital route after finishing
      initialRoute: "/signinscreen",
      onGenerateRoute: routClassInctance.generateRoute,
    );
  }
}
