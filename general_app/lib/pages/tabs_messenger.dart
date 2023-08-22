import 'package:flutter/material.dart';
import 'package:general_app/pages/users.dart';

// Home Tab body: Chats
class Chats extends StatefulWidget {
  const Chats({super.key});

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  // int initState() {
  //   return chatIndex;
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: users.length, // from contacts class
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          leading: users[index].displayImage,
          title: Text(users[index].name),
          subtitle: Text(users[index].lastText),
          trailing: Text(users[index].time),
          onTap: () {
            chatIndex = index;
            debugPrint("Chat index is: $chatIndex");
            Navigator.pushNamed(context, '/chatBox');
          },
        );
      },
    ); // ListViewBuilder;
  }
}

// Groups tab body: GroupsScreen
class Groups extends StatefulWidget {
  const Groups({super.key});

  @override
  State<Groups> createState() => _GroupsState();
}

class _GroupsState extends State<Groups> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("No group available"),
    );
  }
}

// Media
class Media extends StatefulWidget {
  const Media({super.key});

  @override
  State<Media> createState() => _MediaState();
}

class _MediaState extends State<Media> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Your videos and pictures will show here..."),
    );
  }
}

// Profile tab
class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("No profile information."),
    );
  }
}
