import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final Widget? child;
  final String text;
  final VoidCallback? onPressed;
  final Color buttonColor;
  final Color textColor;
  final double borderRadius;
  final EdgeInsetsGeometry? padding;

  const CustomElevatedButton({
    Key? key,
    this.child,
    required this.text,
    this.onPressed,
    required this.buttonColor,
    required this.textColor,
    this.borderRadius = 8.0,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        padding: padding ?? const EdgeInsets.symmetric(vertical: 14),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
    );
  }
}
