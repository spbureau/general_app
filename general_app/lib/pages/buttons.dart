// Flutter Buttons
// #1 TextButton (formerly FlatButton)
// #2 ElevatedButton (formerly RaisedButton)
// #3 FloationActionButton
// #4 DropDownButton
// #5 IconButton
// #6 Inkwell Button
// #7 PopUp Button
// #8 OutlineButton

import 'package:flutter/material.dart';

class MyButtons extends StatelessWidget {
  const MyButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Flutter Buttons"), elevation: 1.0),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              "Already have an account?",
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
            TextButton(
              onPressed: () {
                debugPrint("button pressed");
              },
              child: const Text(
                "Sign Up",
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                debugPrint("Signed in Successful!");
              },
              child: const Text(
                "Sign In",
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        tooltip: "New Chat",
        hoverColor: Colors.lightGreen,
        label: const Text("Chat"),
        icon: const Icon(Icons.chat_rounded),
        // child: const Icon(Icons.chat_rounded),
        // child: const Row(),
      ),
    );
  }
}


// Inkwell button has additanal features for advanced functions
// 