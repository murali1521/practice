import 'package:flutter/material.dart';
import 'package:hiiiiiiii/widgets/customimageview.dart';
import 'package:hiiiiiiii/widgets/customtextformfield.dart';
import 'package:hiiiiiiii/widgets/message_widget.dart';
// import 'custom_widgets.dart'; // Import your custom widgets file

class MessageScreen2 extends StatelessWidget {
  const MessageScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade700,
      appBar: AppBar(
        backgroundColor: Colors.purple.shade800,
        elevation: 0,
        title: Row(
          children: [
            CustomImageView(
              imagePath: 'assets/hey1.png', // Replace with the actual path
              height: 40,
              width: 40,
              radius: BorderRadius.circular(20),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Edein Vindain',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                Text(
                  'Active now',
                  style: TextStyle(color: Colors.white70, fontSize: 12),
                ),
              ],
            ),
          ],
        ),
        actions: const [
          Icon(Icons.call, color: Colors.white),
          SizedBox(width: 15),
          Icon(Icons.video_call, color: Colors.white),
          SizedBox(width: 15),
          Icon(Icons.more_vert, color: Colors.white),
          SizedBox(width: 10),
        ],
      ),
      body: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Opacity(
              opacity: 0.2,
              child: CustomImageView(
                imagePath: 'assets/Background.png', // Replace with the actual path
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: [
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  children: const [
                    MessageWidget(
                      messageText: "Hello, have a great day!",
                      isSentByUser: false,
                    ),
                    Center(
                      child: Text(
                        "3:23pm",
                        style: TextStyle(color: Colors.white70, fontSize: 12),
                      ),
                    ),
                    MessageWidget(
                      messageText: "Thank you broo! ❤️",
                      isSentByUser: true,
                    ),
                    MessageWidget(
                      messageText: "Hope that u can remember who i am in tomorrow",
                      isSentByUser: false,
                    ),
                    MessageWidget(
                      messageText: "What's wrong to you?!",
                      isSentByUser: true,
                    ),
                    MessageWidget(
                      messageText: "Are you ok?",
                      isSentByUser: true,
                    ),
                    MessageWidget(
                      messageText:
                          "I had a dream. At one day, no one know who i am...",
                      isSentByUser: false,
                    ),
                    MessageWidget(
                      messageText: "I feel extremely scare",
                      isSentByUser: false,
                    ),
                    MessageWidget(
                      messageText: "I understand",
                      isSentByUser: true,
                    ),
                  ],
                ),
              ),
              _buildMessageInputField(),
            ],
          ),
        ],
      ),
    );
  }

  // Input field using CustomTextFormField
  Widget _buildMessageInputField() {
    return Container(
      color: Colors.purple.shade800,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Row(
        children: [
          const Icon(Icons.emoji_emotions, color: Colors.white70),
          const SizedBox(width: 10),
          const Icon(Icons.camera_alt, color: Colors.white70),
          const SizedBox(width: 10),
          const Icon(Icons.mic, color: Colors.white70),
          const SizedBox(width: 10),
          Expanded(
            child: CustomTextFormField(
              hintText: "But who are u?",
              borderColor: Colors.purple.shade600,
              textColor: Colors.white,
              hintColor: Colors.white70,
              contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                            suffix: const Icon(Icons.send, color: Colors.white70),
            ),
          ),
        ],
      ),
    );
  }
}

