import 'package:flutter/material.dart';
import 'package:hiiiiiiii/widgets/bottomnavigationbarm1.dart';
import 'package:hiiiiiiii/widgets/chatlistm1.dart';
import 'package:hiiiiiiii/widgets/searchbarm1.dart';
import 'package:hiiiiiiii/widgets/sidenavbarm1.dart';
import 'package:hiiiiiiii/widgets/storysectionm1.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade300,
      body: Row(
        children: [
          const Sidenavbarm1(),
          Expanded(
            child: Column(
              children: [
                const SizedBox(height: 40), // For status bar
                const Searchbarm1(),
                const SizedBox(height: 16),
                const Storysectionm1(),
                const SizedBox(height: 16),
                const Expanded(child: Chatlistm1()),
                const Bottomnavigationbarm1(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
