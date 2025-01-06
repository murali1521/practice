import 'package:flutter/material.dart';

class CustomImageView extends StatelessWidget {
  final String imagePath;
  final double? height;
  final double? width;
  final BoxFit fit;
  final BorderRadius? radius;

  const CustomImageView({
    Key? key,
    required this.imagePath,
    this.height,
    this.width,
    this.fit = BoxFit.cover,
    this.radius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: radius ?? BorderRadius.circular(0),
      child: Image.asset(
        imagePath,
        height: height,
        width: width,
        fit: fit,
      ),
    );
  }
}
