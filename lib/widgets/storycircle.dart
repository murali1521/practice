import 'package:flutter/material.dart';

class StoryCircle extends StatelessWidget {
  final String imagePath;
  final String username;
  final bool isAdd;

  const StoryCircle({
    Key? key,
    required this.imagePath,
    required this.username,
    this.isAdd = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(imagePath),
            ),
            if (isAdd)
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.add, size: 16, color: Colors.white),
                ),
              ),
          ],
        ),
        const SizedBox(height: 8),
        Text(
          username,
          style: const TextStyle(color: Colors.white, fontSize: 12),
        ),
      ],
    );
  }
}