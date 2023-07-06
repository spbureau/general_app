// Still in progress...
// My TextField

import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  const MyTextField({super.key});

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TextField"),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            color: Colors.grey,
            //color: Colors.blue,
            child: TextField(
              decoration: const InputDecoration(
                  border: UnderlineInputBorder(
                      //borderRadius: BorderRadius.all(500),
                      ),
                  label: Text("Full Name"),
                  hintText: "Enter your name"),
              controller: nameController,
            ),
          )
        ],
      ),
    );
  }
}
