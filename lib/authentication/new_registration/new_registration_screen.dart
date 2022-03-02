import 'package:flutter/material.dart';
import 'package:organico/core/components/size_config.dart';
import 'package:organico/core/constants/colors.dart';
import 'package:organico/core/constants/text_styles.dart';

class NewRegistrationScreen extends StatelessWidget {
  const NewRegistrationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text("New Registration"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.transparent,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.transparent,
              width: MediaQuery.of(context).size.width,
              child: const Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  "It looks like you don’t have an account on this number. Please let us know some information for a secure service.",
                  style: MyTextStyles.infoTextStyle,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              color: Colors.transparent,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Full name",
                      style: MyTextStyles.textFieldTopTextStyle,
                    ),
                    Container(
                      color: Colors.blueGrey,
                      width: getProportionScreenWidth(20),
                      height: getProportionScreenHeight(20),
                    ),
                    const Text(
                      "Password",
                      style: MyTextStyles.textFieldTopTextStyle,
                    ),
                    Container(
                      color: Colors.blueGrey,
                      width: getProportionScreenWidth(20),
                      height: getProportionScreenHeight(20),
                    ),
                    const Text(
                      "Password Configuration",
                      style: MyTextStyles.textFieldTopTextStyle,
                    ),
                    Container(
                      color: Colors.blueGrey,
                      width: getProportionScreenWidth(20),
                      height: getProportionScreenHeight(20),
                    ),
                    Container(
                      color: Colors.blueGrey,
                      width: getProportionScreenWidth(500),
                      height: getProportionScreenHeight(50),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              color: Colors.blue,
              width: MediaQuery.of(context).size.width,
            ),
          ),
        ],
      ),
    );
  }
}
