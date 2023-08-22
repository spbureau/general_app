// Contacts Class
import 'package:flutter/material.dart';

class Person {
  String name;
  Icon displayImage;
  String lastText;
  String time;

  Person(this.displayImage, this.name, this.lastText, this.time);
}

// Index for opening custom chatbox
int chatIndex = 0;

List<Person> users = [
  Person(
      const Icon(
        Icons.supervised_user_circle,
        color: Colors.blue,
      ),
      "Simon Peters",
      "Hi good morning",
      "5:30pm"),
  Person(
      const Icon(
        Icons.supervised_user_circle,
        color: Colors.red,
      ),
      "BB ",
      "Hi good morning",
      "5:30pm"),
  Person(
      const Icon(
        Icons.supervised_user_circle,
        color: Colors.pink,
      ),
      "Melanin",
      "Hi good morning",
      "5:30pm"),
  Person(
      const Icon(
        Icons.supervised_user_circle,
        color: Colors.amber,
      ),
      "St. Ernest",
      "Hi good morning",
      "5:30pm"),
  Person(
      const Icon(
        Icons.supervised_user_circle,
        color: Colors.green,
      ),
      "Samuel OB",
      "Hi good morning",
      "5:30pm"),
  Person(
      const Icon(
        Icons.supervised_user_circle,
        color: Colors.blue,
      ),
      "Johnny K.",
      "Hi good morning",
      "5:30pm"),
  Person(
      const Icon(
        Icons.supervised_user_circle,
        color: Colors.purple,
      ),
      "Delight",
      "Hi good morning",
      "5:30pm"),
  Person(
      const Icon(
        Icons.supervised_user_circle,
        color: Colors.red,
      ),
      "Kidiman Africa",
      "Hi good morning",
      "5:30pm"),
  Person(
      const Icon(
        Icons.supervised_user_circle,
        color: Colors.blue,
      ),
      "M.K.",
      "Hi good morning",
      "5:30pm"),
  Person(
      const Icon(
        Icons.supervised_user_circle,
        color: Colors.cyan,
      ),
      "St. Seth",
      "Hi good morning",
      "5:30pm"),
  Person(
      const Icon(
        Icons.supervised_user_circle,
        color: Colors.brown,
      ),
      "Osokoo",
      "Hi good morning",
      "5:30pm"),
  Person(
      const Icon(
        Icons.supervised_user_circle,
        color: Colors.green,
      ),
      "William PHD",
      "Hi good morning",
      "5:30pm"),
  Person(
      const Icon(
        Icons.supervised_user_circle,
        color: Colors.green,
      ),
      "SP Bureau",
      "Hi good morning",
      "5:30pm"),
  Person(
      const Icon(
        Icons.supervised_user_circle,
        color: Colors.blue,
      ),
      "Jennifer",
      "Hi good morning",
      "5:30pm"),
  Person(
      const Icon(
        Icons.supervised_user_circle,
        color: Colors.red,
      ),
      "Emmanuel Asare",
      "Hi good morning",
      "5:30pm"),
  Person(
      const Icon(
        Icons.supervised_user_circle,
        color: Colors.amber,
      ),
      "John Mark",
      "Hi good morning",
      "5:30pm"),
];
// End of user information