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

  void _toggleLike() {
    //setState(){} syntax...
    setState(() {
      if (isLiked == false) {
        isLiked = true;
        likeCount += 1;
      } else {
        isLiked = false;
        likeCount -= 1;
      }
    });
  }

// Shouldn't be here... just for easy reading
/*
IconButton(
            iconSize: 100.0,
            icon: (isLiked
                ? const Icon(Icons.favorite)
                : const Icon(Icons.favorite_border)),
            color: Colors.red[500],
            onPressed:
                _toggleLike, // invoked when icon is pressed to set the state of the widget to reflect changes,
          ), // IconButton ends
          const SizedBox(width: 10.0),
          Text('$likeCount'),
*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("LikePost"), actions: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
      ]),
      body: Center(
        child: Column(children: [
          const Text(
            "Click to toggle like",
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.grey,
            ),
          ),
          IconButton(
            iconSize: 100.0,
            icon: (isLiked
                ? const Icon(Icons.favorite)
                : const Icon(Icons.favorite_border)),
            color: Colors.red[500],
            onPressed:
                _toggleLike, // invoked when icon is pressed to set the state of the widget to reflect changes,
          ), // IconButton ends
          const SizedBox(width: 10.0),
          Text('$likeCount'),
        ]),
      ),
    );
  } // End of Widget build context
} // End of _LikePostsState class
