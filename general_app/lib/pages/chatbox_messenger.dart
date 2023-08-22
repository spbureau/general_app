import 'package:flutter/material.dart';
import 'package:general_app/pages/users.dart';
// import 'package:general_app/pages/users.dart';

TextEditingController messageController = TextEditingController();

List<String> messages = [
  "Hello, good day!",
  "How are you?",
];
// used to set satate upon additions
List<String> allMessages = [];

class ChatBox extends StatefulWidget {
  const ChatBox({super.key});

  @override
  State<ChatBox> createState() => _ChatBoxState();
}

class _ChatBoxState extends State<ChatBox> {
  // get chatIndex => null;

  // get index => null;
  @override
  void initState() {
    // ToDO: implement initState
    allMessages = messages;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: const Icon(Icons.person),
        title: Row(
          children: [
            users[chatIndex].displayImage,
            const SizedBox(
              width: 10,
            ),
            Text(users[chatIndex].name),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {
                debugPrint("Pressed");
              },
              icon: const Icon(Icons.video_call_outlined)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.call_outlined)),
          IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text(
                      "Chat Information",
                      style: TextStyle(color: Colors.green),
                    ),
                    content: const Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text("Hello user!"),
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
              icon: const Icon(Icons.info_outline)),
          //Info IconButton Ends
        ],
      ),
      body: Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          const MessagesBox(),
          // Message Box
          Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: messageController,
                      // expands: true,
                      minLines: 1,
                      maxLines: 5,
                      decoration: InputDecoration(
                        fillColor: Colors.grey,
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        prefixIcon: const Icon(Icons.message),
                        hintText: "Type message here",
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                messageController.clear();
                              });
                            },
                            icon: const Icon(Icons.clear)),
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        messages.add(messageController.text);
                        allMessages = messages;
                        // to clear textfield when message is sent
                        messageController.clear();
                        // debugPrint("Message sent, box cleared");
                        // debugPrint(
                        //     "Current no. of messages is ${allMessages.length}");
                      });
                    },
                    icon: const Icon(
                      Icons.send,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MessagesBox extends StatefulWidget {
  const MessagesBox({super.key});
  @override
  State<MessagesBox> createState() => _MessagesBoxState();
}

class _MessagesBoxState extends State<MessagesBox> {
  // void _sendMessage() {
  //   setState(() {
  //     messages.add(messageController.text);

  //   });
  // }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: allMessages.length, // from contacts class
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(allMessages[index]),
                subtitle: Align(
                  alignment: Alignment.bottomRight,
                  child: Text("msg $index",
                      style: const TextStyle(
                          fontStyle: FontStyle.italic, fontSize: 9)),
                ),
                trailing: IconButton(
                    onPressed: () {
                      setState(() {
                        debugPrint(
                            "Message to be deleted @index $index: ${allMessages[index]}");
                        // debugPrint("message index is: $index");
                        messages.remove(allMessages[index]);
                        debugPrint("Message removed from list");
                        debugPrint(
                            "Number of messages remaining is ${allMessages.length}");
                      });
                    },
                    icon: const Icon(Icons.delete)),
              );
            },
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        const Center(
            child: Text(
          "...",
          style: TextStyle(color: Colors.grey),
        ))
      ],
    );
  }
}
