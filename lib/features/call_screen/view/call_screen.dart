import 'package:flutter/material.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade100,
      appBar: AppBar(
        backgroundColor: Colors.purple.shade400,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          "Edein Vindain",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert, color: Colors.white),
            onPressed: () {
              // Add action functionality here
            },
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Profile Picture and Name
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 100),
              const CircleAvatar(
                backgroundImage: AssetImage("assets/hey1.png"),
                radius: 50,
              ),
              const SizedBox(height: 20),
              const Text(
                "Edein Vindain",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "00:08",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white70,
                ),
              ),
            ],
          ),

          // Call Options
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            decoration: BoxDecoration(
              color: Colors.purple.shade300,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // Mute Button
                IconButton(
                  iconSize: 50,
                  onPressed: () {
                    // Mute functionality
                  },
                  icon: Image.asset("assets/video-slash.png"),
                ),

                // Hold Button
                IconButton(
                  iconSize: 50,
                  onPressed: () {
                    // Hold functionality
                  },
                  icon: Image.asset("assets/microphone.png"),
                ),

                // Speaker Button
                IconButton(
                  iconSize: 50,
                  onPressed: () {
                    // Speaker functionality
                  },
                  icon: Image.asset("assets/volume-low.png"),
                ),

                // End Call Button
                IconButton(
                  iconSize: 50,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Image.asset("assets/call off.png"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
