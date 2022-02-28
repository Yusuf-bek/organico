import 'package:flutter/material.dart';

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
            flex: 2,
            child: Container(
              color: Colors.red,
              width: MediaQuery.of(context).size.width,
              child: const Text(
                "It looks like you don’t have an account on this number. Please let us know some information for a secure service.",
                style: TextStyle(color: Color(0x000000ff)),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              color: Colors.green,
              width: MediaQuery.of(context).size.width,
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
