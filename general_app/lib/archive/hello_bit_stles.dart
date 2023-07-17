// A class for HelloBIT stateless widget class;
// 22/06/2023 - Dr. Serbe

import 'package:flutter/material.dart';

// HelloBIT2 class
class HelloBIT2 extends StatelessWidget {
  const HelloBIT2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Hello BIT",
        textDirection: TextDirection.ltr,
        style: TextStyle(
            fontFamily: 'Tangerine', color: Colors.deepOrange, fontSize: 20.0),
      ),
    );
  }
}
