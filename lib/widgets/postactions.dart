import 'package:flutter/material.dart';

class PostActions extends StatelessWidget {
  final int likes;
  final int comments;

  const PostActions({
    Key? key,
    required this.likes,
    required this.comments,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(Icons.favorite_border, color: Colors.white),
            const SizedBox(width: 5),
            Text('$likes', style: const TextStyle(color: Colors.white)),
          ],
        ),
        Row(
          children: [
            Icon(Icons.comment, color: Colors.white),
            const SizedBox(width: 5),
            Text('$comments', style: const TextStyle(color: Colors.white)),
          ],
        ),
        Icon(Icons.send, color: Colors.white),
      ],
    );
  }
}