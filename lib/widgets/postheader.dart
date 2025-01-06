import 'package:flutter/material.dart';

class PostHeader extends StatelessWidget {
  final String profileImage;
  final String username;
  final String timeAgo;

  const PostHeader({
    Key? key,
    required this.profileImage,
    required this.username,
    required this.timeAgo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(profileImage),
          radius: 20,
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              username,
              style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            Text(
              timeAgo,
              style: const TextStyle(color: Colors.white70, fontSize: 12),
            ),
          ],
        ),
        const Spacer(),
        IconButton(
          icon: const Icon(Icons.more_vert, color: Colors.white),
          onPressed: () {},
        ),
      ],
    );
  }
}