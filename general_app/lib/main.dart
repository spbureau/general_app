import 'package:flutter/material.dart';
// import 'package:general_app/pages/text_fields.dart';
// import 'package:general_app/pages/whatsapp.dart';
import 'package:general_app/pages/whatsapp_2.dart';
//import 'package:general_app/pages/buttons.dart';
// import 'package:general_app/pages/whatsapp.dart';
// import './pages/make_it_rain.dart';
// import './pages/likepost.dart';

void main() {
  runApp(
    MaterialApp(
      title: "My App",
      home: const Whatsapp2(),
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      //darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
    ),
  );
}
