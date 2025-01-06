import 'package:flutter/material.dart';

class CommentWidget extends StatelessWidget {
  final String username;
  final String comment;
  final String timeAgo;
  final String profileImage;

  const CommentWidget({
    Key? key,
    required this.username,
    required this.comment,
    required this.timeAgo,
    required this.profileImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(profileImage),
          radius: 20,
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                username,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 4),
              Text(comment),
              const SizedBox(height: 4),
              Text(
                timeAgo,
                style: const TextStyle(color: Colors.grey, fontSize: 12),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
