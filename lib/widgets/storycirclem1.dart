import 'package:flutter/material.dart';

class Storycirclem1 extends StatelessWidget {
  final String imagePath;
  final String username;

  const Storycirclem1({
    Key? key,
    required this.imagePath,
    required this.username,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(imagePath),
        ),
        const SizedBox(height: 8),
        Text(
          username,
          style: const TextStyle(color: Colors.white, fontSize: 12),
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
