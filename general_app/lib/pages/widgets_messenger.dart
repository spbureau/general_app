import 'package:flutter/material.dart';

// #Drawer Widget Class
class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          // const DrawerHeader(
          //   decoration: BoxDecoration(
          //     color: Colors.green,
          //   ),
          //   child: Text(
          //     'Navigation Drawer',
          //     style: TextStyle(fontSize: 20),
          //   ),
          // ),
          UserAccountsDrawerHeader(
              decoration: const BoxDecoration(color: Colors.green),
              currentAccountPicture:
                  Image.asset("assets/images/profile_photo.png"),
              accountName:
                  const Text('Simon Peters', style: TextStyle(fontSize: 20)),
              accountEmail: const Text("simonpeters@gmail.com")),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('General settings'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.mark_unread_chat_alt_outlined),
            title: const Text('Unread Messages'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.star_border_outlined),
            title: const Text('Starred Messages'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.archive_outlined),
            title: const Text('Archived'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.block_flipped),
            title: const Text('Spam & blocked'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.question_mark),
            title: const Text('Help & feedback'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          Expanded(
              child: Container(
            height: 100,
          )),
          const Center(
              child: Column(
            children: [
              Text("Privacy & Terms of use"),
              Text("www.simonpeters.com", style: TextStyle(color: Colors.green))
            ],
          ))
        ],
      ),
    );
  }
}

// Search BottomSheet method
Widget searchBottomSheet() {
  return ListView(
    children: [
      const Center(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Text("Search in Messenger",
              style: TextStyle(color: Colors.green, fontSize: 18)),
        ),
      ),
      Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: TextField(
            decoration: InputDecoration(
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                prefixIcon: const Icon(Icons.search_outlined),
                hintText: "Type keyword here to search",
                suffixIcon: IconButton(
                    onPressed: () {}, icon: const Icon(Icons.clear))),
            // controller: searchController,
          ),
        ),
      ),

      //   children: [
      //     TextField(
      //       decoration: InputDecoration(
      //           border: const OutlineInputBorder(
      //             borderRadius: BorderRadius.all(Radius.circular(4.0)),
      //           ),
      //           prefixIcon: const Icon(Icons.search_outlined),
      //           hintText: "Type keyword here to search",
      //           suffixIcon: IconButton(
      //               onPressed: () {}, icon: const Icon(Icons.clear))),
      //       // controller: searchController,
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: TextButton(onPressed: () {}, child: const Text("Search")),
      //     ),
      //   ],
      // ),
    ],
  );
}
