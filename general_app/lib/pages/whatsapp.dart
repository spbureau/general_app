import 'package:flutter/material.dart';

class Whatsapp extends StatelessWidget {
  const Whatsapp({super.key});

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
            onPressed: () {},
            icon: const Icon(Icons.info_outline),
          ),
        ],
      ),
      // Page Body
      body: const Column(
        children: [
          Row(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.supervised_user_circle,
                size: 50.0,
                color: Colors.deepOrange,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Simon Peters",
                    style: TextStyle(fontSize: 18.0),
                  ),
                  Text("Hello, good morning! I sent...",
                      style: TextStyle(fontStyle: FontStyle.italic))
                ],
              ),
              SizedBox(
                width: 190.0,
              ),
              Text(
                "Yesterday",
                style: TextStyle(fontStyle: FontStyle.italic),
              ), //
            ],
          ), // First Row Ends
          /////////////
          ////////////
          Row(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.supervised_user_circle,
                size: 50.0,
                color: Colors.lightGreen,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Simon Peters",
                    style: TextStyle(fontSize: 18.0),
                  ),
                  Text("Hello, good morning! I sent...",
                      style: TextStyle(fontStyle: FontStyle.italic))
                ],
              ),
              SizedBox(
                width: 190.0,
              ),
              Text(
                "18:45 pm",
                style: TextStyle(fontStyle: FontStyle.italic),
              ) //
            ],
          ), // First Row Ends
        ],
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
