import 'package:flutter/material.dart';
import 'package:hiiiiiiii/widgets/comment_widget.dart';
import 'package:hiiiiiiii/widgets/commentpostcard.dart';
import 'package:hiiiiiiii/widgets/customtextformfield.dart';
// import 'package:hiiiiiiii/widgets/postcard.dart';

class CommentScreen extends StatelessWidget {
  const CommentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade800,
      appBar: AppBar(
        backgroundColor: Colors.purple.shade800,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {},
        ),
        title: const Text(
          "Comments",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          // PostCard Section
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: CommentPostCard(
              profileImage: "assets/mainprofile.png",
              username: "Edein Vindain",
              timeAgo: "5 minutes",    
              postImage: "assets/profile-2user.png",
              likes: 999,
              comments: 320,
            ),
          ),
          const Divider(color: Colors.white54, thickness: 1, height: 24),
          // Comments Section
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              children: const [
                CommentWidget(
                  username: "Kirina Daisen",
                  comment:
                      "OMG!!!!! It's too beauty!!! I'm dying bcuz of ur photoooook :)",
                  timeAgo: "1 hour",
                  profileImage: "assets/eye.png",
                ),
                SizedBox(height: 8),
                CommentWidget(
                  username: "Shiki Maico",
                  comment:
                      "OHHHHHHH!!! You act as a professional photographer",
                  timeAgo: "3 hours",
                  profileImage: "assets/second.png",
                ),
                SizedBox(height: 8),
                CommentWidget(
                  username: "Den Osamu",
                  comment:
                      "Do you wanna go w/ me to take some sky photos next time? I also took a lot of magnificent photos like this...",
                  timeAgo: "11 hours",
                  profileImage: "assets/third.png",
                ),
                SizedBox(height: 8),
                CommentWidget(
                  username: "Ven Dioet",
                  comment:
                      "You need to thank me cuz I'm the 'skeleton' that brings you to this one...",
                  timeAgo: "1 day",
                  profileImage: "assets/fourth.png",
                ),
                SizedBox(height: 8),
                CommentWidget(
                  username: "Ven Dioet",
                  comment:
                      "This picture lets me remember Anidie Maidue. We have a trip to an island; this place is known as one of the islands that have the most beautiful cloud in the world.",
                  timeAgo: "1 day",
                  profileImage: "assets/last.png",
                ),
              ],
            ),
          ),
          // Text Input Section
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child: CustomTextFormField(
                    hintText: "Write a comment...",
                    borderColor: Colors.white54,
                    textColor: Colors.white,
                    hintColor: Colors.white54,
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 12,
                      horizontal: 16,
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                FloatingActionButton(
                  backgroundColor: Colors.purple,
                  onPressed: () {},
                  child: const Icon(Icons.send, color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }}