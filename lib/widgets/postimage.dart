import 'package:flutter/material.dart';

class PostImage extends StatelessWidget {
  final String imagePath;

  const PostImage({
    Key? key,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Image.asset(imagePath, fit: BoxFit.cover),
    );
  }
}
