import 'package:flutter/material.dart';
import 'package:general_app/pages/users.dart';

class Whatsapp2 extends StatelessWidget {
  const Whatsapp2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Whatsapp"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.camera_alt_outlined),
          ),
          IconButton(
            onPressed: () {
              debugPrint("Info icon: ${users.length}");
            },
            icon: const Icon(Icons.info_outline),
          ),
        ],
      ),
      // Page Body
      body: ListView.builder(
        itemCount: users.length, // from contacts class
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: users[index].displayImage,
            title: Text(users[index].name),
            subtitle: Text(users[index].lastText),
            trailing: Text(users[index].time),
            onTap: () {},
          );
        },
      ), // ListViewBuilder

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.edit),
      ),
      // Bottom Navaigation Bar
      bottomNavigationBar: BottomNavigationBar(
        //backgroundColor: Colors.red,
        selectedItemColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box_outlined),
            label: "Add",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.ondemand_video_sharp), label: "Videos"),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_applications_outlined),
            label: "Settings",
          )
        ],
      ),
    );
  }
}

// void incrementCounter() {
// // soemthing
//   debugPrint("whatsapp");
// }

// IconButon(
//   onPressed: (){},
//   icon: Icon(Icons.abc),
// )
