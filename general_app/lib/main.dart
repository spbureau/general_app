import 'package:flutter/material.dart';
import 'package:general_app/pages/chatbox_messenger.dart';
// import 'package:general_app/pages/text_fields.dart';
// import 'package:general_app/pages/whatsapp.dart';
import 'package:general_app/pages/messenger.dart';
//import 'package:general_app/pages/buttons.dart';
// import 'package:general_app/pages/whatsapp.dart';
// import './pages/make_it_rain.dart';
// import './pages/likepost.dart';

void main() {
  // int tappedChatIndex;
  runApp(
    MaterialApp(
      title: "My App",
      // home: const Messenger(),
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: "Raleway",
      ),
      darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const Messenger(),
        '/chatBox': (context) => const ChatBox(),
      },
    ),
  );
}
