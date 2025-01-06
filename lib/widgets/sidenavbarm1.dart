import 'package:flutter/material.dart';

class Sidenavbarm1 extends StatelessWidget {
  const Sidenavbarm1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      color: Colors.purple.shade400,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(height: 16), // Top padding
          Column(
            children: [
              const SizedBox(height: 16),
              CircleAvatar(
                radius: 24,
                backgroundImage: AssetImage('assets/Hii1.png'), // Add user's profile picture here
              ),
              const SizedBox(height: 40),
              Icon(Icons.people, color: Colors.white),
              const SizedBox(height: 20),
              Icon(Icons.group_work, color: Colors.white),
              const SizedBox(height: 20),
              Icon(Icons.menu_book, color: Colors.white),
              const SizedBox(height: 20),
              Icon(Icons.message, color: Colors.white),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Icon(Icons.settings, color: Colors.white), // Settings icon at the bottom
          ),
        ],
      ),
    );
  }
}
