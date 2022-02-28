import 'package:flutter/material.dart';
import 'package:organico/sizeconfig/size_config.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 1)).then((value) => {
          Navigator.pushReplacementNamed(context, "/homepage"),
        });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Center(
        child: SizedBox(
          width: getProportionScreenWidth(143),
          height: getProportionScreenHeight(203),
          child: const Image(
            image: AssetImage("assets/light_theme_icons/logo.png"),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
