import 'package:flutter/material.dart';

class CodeInputField extends StatelessWidget {
  final TextEditingController controller;
  final Color borderColor;
  final Color textColor;
  final Color hintColor;

  const CodeInputField({
    Key? key,
    required this.controller,
    this.borderColor = Colors.white,
    this.textColor = Colors.white,
    this.hintColor = Colors.white70,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60,
      child: TextFormField(
        controller: controller,
        keyboardType: TextInputType.number,
        textInputAction: TextInputAction.next,
        textAlign: TextAlign.center,
        style: TextStyle(color: textColor, fontSize: 18, fontWeight: FontWeight.bold),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 12),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: borderColor, width: 1.5),
            borderRadius: BorderRadius.circular(8),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: borderColor, width: 2),
            borderRadius: BorderRadius.circular(8),
          ),
          hintText: "-",
          hintStyle: TextStyle(color: hintColor, fontSize: 18),
        ),
      ),
    );
  }
}
