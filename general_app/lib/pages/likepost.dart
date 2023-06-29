// A new LikePost Class

import 'package:flutter/material.dart';

class LikePosts extends StatefulWidget {
  const LikePosts({super.key});

  @override
  State<LikePosts> createState() => _LikePostsState();
}

class _LikePostsState extends State<LikePosts> {
  bool isLiked = false;
  int likeCount = 40;
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Row(children: [
        /*
        IconButton(
          icon: (isLiked? Icon(Icons.favorite_border)
          :Icon(Icons.favorite)),
          color: Colors.red[500],
          onPressed: _toggleLike(); // invoked when icon is pressed to set the state of the widget to reflect changes, defined below
          ), // IconButton ends
        SizedBox(width: 10.0),
        Text("$_likeCount"), */
      ]),
    );
  } // End of Widget build context
} // End of _LikePostsState class


/*
void _toggleLike(){
  
  //setState(){} syntax...
  setState((){
    if (isLiked){
      likeCount += 1;
      isLiked = true;
    }
    else {
      likeCount -= 1;
      isLiked = false;
    }
  });
} */
