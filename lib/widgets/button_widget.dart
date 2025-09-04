import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {

  final VoidCallback onPressed;
  final String text;

  final double fontSize;
  const ButtonWidget({super.key, required this.onPressed, required this.text, required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(Colors.black54),
        padding: WidgetStateProperty.all(EdgeInsets.all(16.0)),
      ),
      child: Text(
        text,
        style: TextStyle(fontSize: fontSize, color: Colors.white),
      ),
    );
  }
}
