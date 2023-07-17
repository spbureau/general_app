// // LikePost StatefulWidget

// import 'package:flutter/material.dart';



// // Building a StatefulWidget
// // Has...
// // 1. Stful widget class with createState function
// // An instance of createState is created in a new class to exexute whatever state yiu want, including building the widget

// class LikePost extends StatefulWidget {
//   const LikePost({super.key});

//   @override
//   State<LikePost> createState() => _LikePostState();
// }

// class _LikePostState extends State<LikePost>{
//     bool isLiked = false;
//     int likeCount = 40;
  
//   @override
//   Widget build(BuidContext context){
//     return const Scaffold(

//       body: Row(
//       children: [
//         IconButton(
//           icon: (_isLiked? Icon(Icons.love)
//           :Icon(Icons.love_border)),
//           color: Colors.red[500],
//           onPressed: _toggleLike, // invoked when icon is pressed to set the state of the widget to reflect changes, defined below
//           ), // IconButton ends
//         SizedBox(width: 10.0),
//         Text("$_likeCount"),
//         ]
//       ), // Row ends,
//     );
    
//   }
// }

// void _toggleLike(){
  
//   //setState(){} syntax...
//   setState((){
//     if (_isLiked){
//       _likeCount += 1;
//       _isLiked = true;
//     }
//     else {
//       _likeCount -= 1;
//       _isLiked = false;
//     }
//   });
// }

// // code is now ready to be used inside other widgets
// // Say a Scaffold, Center...
// // See main method for usage...


// // End of All LikePost related widgets and funtions
// // Build and test :)
// // Written with CodeEditor Android



// // // // // // // // 
// // A StatelessWidget
// class MyClass extends StatelessWidget{
//   const MyClass({super.key});
//   @override
//   Widget build(BuidContext context){
//     return const Scaffold();
//   }
// }


// // Another Stateful Widget
// class MessagesPage extends StatefulWidget{
//   const MessagesPage({super.key});
  
//   @override
//   State<MessagesPage> createState()=> _MessagesPageState();
// }

// class _MessagesPageState extends State<MessagesPage>{
  
//   // which will have the build method
//   //@override
//   //Widget build(BuidContext context){
//     return Widget();
//   }
// }