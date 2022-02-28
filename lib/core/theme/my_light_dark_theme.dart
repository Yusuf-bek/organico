import 'package:flutter/material.dart';
import 'package:organico/core/components/generate_material_color.dart';

class MyTheme {
  static ThemeData getMyLightTheme() {
    return ThemeData(
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
    );
  }

  static ThemeData getMyDarkTheme() {
    return ThemeData.dark();
  }
}
