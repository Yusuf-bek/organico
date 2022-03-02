import 'package:flutter/material.dart';
import 'package:organico/core/components/size_config.dart';
import 'package:organico/core/constants/colors.dart';
import 'package:organico/core/constants/png_icon_paths.dart';
import 'package:organico/core/constants/text_styles.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            getWidgetForImage(),
            getWidgwetForTexts(context),

            //* InputField for phone number
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                  width: getProportionScreenWidth(374),
                  height: getProportionScreenHeight(48),
                  child: Row(
                    children: [
                      Container(
                        width: getProportionScreenWidth(74),
                        height: getProportionScreenHeight(48),
                        decoration: BoxDecoration(
                          color: MyColors.greyTextColor,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(27.0),
                            bottomLeft: Radius.circular(27.0),
                          ),
                          border: Border.all(
                            width: 0.5,
                            color: MyColors.greyTextColor,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: getProportionScreenWidth(300),
                        height: getProportionScreenHeight(48),
                        child: const TextField(
                          decoration: InputDecoration(
                            labelText: "Your phone number",
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: MyColors.greyTextColor,
                              ),
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(27.0),
                                topRight: Radius.circular(27.0),
                              ),
                            ),
                            filled: true,
                            hintStyle: TextStyle(
                              color: MyColors.greyTextColor,
                            ),
                            hintText: "phone number",
                            fillColor: Colors.white70,
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
            //* InputField for password
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: getProportionScreenWidth(374),
                height: getProportionScreenHeight(48),
                child: TextField(
                  decoration: InputDecoration(
                      label: const Icon(Icons.lock_outline),
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.remove_red_eye),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(27.0),
                      ),
                      filled: true,
                      hintStyle: const TextStyle(
                        color: Color(0xFF92929D),
                      ),
                      hintText: "Password",
                      fillColor: Colors.white70),
                ),
              ),
            ),

            //* Reset password button
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Reset password",
                    style: TextStyle(
                      color: Colors.green,
                    ),
                  ),
                ),
              ],
            ),

            //* Sign in button
            SizedBox(
              width: getProportionScreenWidth(374),
              height: getProportionScreenHeight(52),
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(
                  "Sign in",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  getWidgetForImage() {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: getProportionScreenWidth(40),
        horizontal: getProportionScreenWidth(20),
      ),
      child: SizedBox(
        width: getProportionScreenWidth(349),
        height: getProportionScreenHeight(318),
        child: const Image(
          image: AssetImage(MyIconPaths.lightSignin),
        ),
      ),
    );
  }

  getWidgwetForTexts(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: getProportionScreenHeight(87),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              "Welcome",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Text(
              "Welcome to Organico Mobile Apps. Please fill in the field below to sign in.",
              style: MyTextStyles.infoTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
