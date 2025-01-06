import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final TextInputType? textInputType;
  final TextInputAction? textInputAction;
  final Widget? suffix;
  final bool obscureText;
  final EdgeInsetsGeometry? contentPadding;
  final Color borderColor;
  final Color textColor;
  final Color hintColor;

  const CustomTextFormField({
    Key? key,
    this.controller,
    this.hintText,
    this.textInputType,
    this.textInputAction,
    this.suffix,
    this.obscureText = false,
    this.contentPadding,
    required this.borderColor,
    required this.textColor,
    required this.hintColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: textInputType,
      textInputAction: textInputAction,
      obscureText: obscureText,
      style: TextStyle(color: textColor),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: hintColor),
        contentPadding: contentPadding ?? const EdgeInsets.all(12),
        suffixIcon: suffix,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: borderColor, width: 1.5),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: borderColor, width: 2),
          borderRadius: BorderRadius.circular(8),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: 1.5),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
