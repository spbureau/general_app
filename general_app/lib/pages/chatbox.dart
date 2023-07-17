import 'package:flutter/material.dart';

class ChatBox extends StatefulWidget {
  const ChatBox({super.key});

  @override
  State<ChatBox> createState() => _ChatBoxState();
}

class _ChatBoxState extends State<ChatBox> {
  // get index => null;
  TextEditingController messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: const Icon(Icons.person),
        title: const Text("ChatBox"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                TextField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.message),
                    hintText: "Type message here",
                    suffixIcon: Icon(Icons.clear),
                    helperMaxLines: 10,
                  ),
                  controller: messageController,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.send),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
