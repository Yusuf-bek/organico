import 'package:flutter/material.dart';

class MyAppBar {
  static getAppBar({required BuildContext context,required String title}) {
    return AppBar(
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: const Text("New Registration"),
    );
  }
}
