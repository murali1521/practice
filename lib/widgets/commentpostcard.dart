import 'package:flutter/material.dart';

class CommentPostCard extends StatelessWidget {
  final String profileImage;
  final String username;
  final String timeAgo;
  final String postImage;
  final int likes;
  final int comments;

  const CommentPostCard({
    Key? key,
    required this.profileImage,
    required this.username,
    required this.timeAgo,
    required this.postImage,
    required this.likes,
    required this.comments,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      elevation: 0,
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header with profile image, username, and time
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(profileImage),
              radius: 24,
            ),
            title: Text(
              username,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              timeAgo,
              style: const TextStyle(color: Colors.grey),
            ),
            trailing: IconButton(
              icon: const Icon(Icons.more_vert, color: Colors.white),
              onPressed: () {},
            ),
          ),

          // Post image
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(postImage),
          ),

          // Action buttons for likes, comments, and share
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Row(
              children: [
                Row(
                  children: [
                    const Icon(Icons.favorite, color: Colors.pink),
                    const SizedBox(width: 4),
                    Text(
                      likes.toString(),
                      style: const TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                const SizedBox(width: 16),
                Row(
                  children: [
                    const Icon(Icons.comment, color: Colors.white),
                    const SizedBox(width: 4),
                    Text(
                      comments.toString(),
                      style: const TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                const Spacer(),
                IconButton(
                  icon: const Icon(Icons.send, color: Colors.white),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
