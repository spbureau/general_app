// Learning with Blay
// From Text Widget to Material Design
// To Stateless Widget
// See other code below!

import 'package:flutter/material.dart';

// #1 Displaying A Simple Text
void main0() {
  // Simple Widget Demo Without Material Widget
  runApp(
    const Text(
      "Hello Blay!",
      textDirection: TextDirection.ltr, // first omit TD,
      // and apply later
    ),
  );
}

// #2 - Wrapping With Center Widget
// Like so...
void main2() {
  // Simple Widget Demo Without Material Widget
  runApp(
    const Center(
      child: Text(
        "Hello Blay!",
        textDirection: TextDirection.ltr, // first omit TD,
        // and apply later
      ),
    ),
  );
}

// #3 Apply some style to Text Widget
// Like so...
void main() {
  // Simple Widget Demo Without Material Widget
  runApp(
    const Center(
      child: Text(
        "Hello Blay!",
        textDirection: TextDirection.ltr, // first omit TD,
        // and apply later
        style: TextStyle(
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
          color: Colors.greenAccent,
        ),
      ),
    ),
  );
}

// #4 Introducing MaterialApp
// Like so...
void main4() {
  runApp(MaterialApp(
    title: "Simple Widget Demo",
    theme: ThemeData.light(),
    darkTheme: ThemeData.dark(),
    home: const Text("Material"),
    // Scaffold, Center, Container, etc
    // See <archive.dart> for example
  ));
}

// #5 Introducing Stateless Widgets

// #6 Creating A new Class/File for UI, Other Widgets

// #7 Scaffolds and Scaffolds