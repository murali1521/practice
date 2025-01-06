import 'package:flutter/material.dart';
// import 'package:hiiiiiiii/features/home_screen/view/home_screen.dart';
import 'package:hiiiiiiii/widgets/postactions.dart';
import 'package:hiiiiiiii/widgets/postheader.dart';
import 'package:hiiiiiiii/widgets/postimage.dart';

class PostCard extends StatelessWidget {
  final String profileImage;
  final String username;
  final String timeAgo;
  final String postText;
  final String hashtags;
  final String postImage;
  final int likes;
  final int comments;

  const PostCard({
    Key? key,
    required this.profileImage,
    required this.username,
    required this.timeAgo,
    required this.postText,
    required this.hashtags,
    required this.postImage,
    required this.likes,
    required this.comments,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      color: Colors.purple.shade300,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PostHeader(
              profileImage: profileImage,
              username: username,
              timeAgo: timeAgo,
            ),
            const SizedBox(height: 10),
            Text(
              postText,
              style: const TextStyle(color: Colors.white, fontSize: 14),
            ),
            const SizedBox(height: 5),
            Text(
              hashtags,
              style: const TextStyle(color: Colors.white70, fontSize: 12),
            ),
            const SizedBox(height: 10),
            PostImage(imagePath: postImage),
            const SizedBox(height: 10),
            PostActions(likes: likes, comments: comments),
          ],
        ),
      ),
    );
  }
}