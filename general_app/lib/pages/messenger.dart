import 'package:flutter/material.dart';
import 'package:general_app/pages/tabs_messenger.dart';
import 'package:general_app/pages/users.dart';

import 'widgets_messenger.dart';

class Messenger extends StatefulWidget {
  const Messenger({super.key});

  @override
  State<Messenger> createState() => _MessengerState();
}

class _MessengerState extends State<Messenger> {
  int tabIndex = 0;

  final tabScreens = [
    const Chats(),
    const Groups(),
    const Media(),
    const Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Messenger",
          style: TextStyle(
            fontSize: 26.0,
            fontFamily: "Courgette",
          ),
        ),
        actions: [
          IconButton(
              onPressed: () => showModalBottomSheet(
                  context: context,
                  // isScrollControlled: true,
                  shape: const RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(16)),
                  ),
                  builder: (context) => searchBottomSheet()),
              icon: const Icon(Icons.search)),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.camera_alt_outlined),
          ),
          IconButton(
            onPressed: () {
              debugPrint("Info icon: ${users.length}");
            },
            icon: const Icon(Icons.more_vert_outlined),
          ),
        ],
      ),
      // Page Body
      body: tabScreens[tabIndex],
      // Body Ends
      drawer: const MyDrawer(),

      // Floating Action Button
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: const Text("Alert Message"),
              content: const SizedBox(
                height: 100,
                width: 300,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.warning),
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Text("Cannot create new message now!"),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Try again later."),
                    ),
                  ],
                ),
              ),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text("OK")),
              ],
            ),
          );
        },
        child: const Icon(Icons.message_outlined),
      ),

      // Bottom Navaigation Bar
      bottomNavigationBar: BottomNavigationBar(
        //backgroundColor: Colors.red,
        currentIndex: tabIndex,
        onTap: (value) => setState(() {
          tabIndex = value;
        }),
        selectedItemColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group_add_outlined),
            label: "Groups",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.ondemand_video_sharp), label: "Videos"),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          )
        ],
      ),
    );
  }
}
