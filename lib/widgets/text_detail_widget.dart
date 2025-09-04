import 'package:flutter/material.dart';
import 'package:planets/config/constants.dart';

class TextDetailWidget extends StatelessWidget {

  final String title;
  final String value;

  const TextDetailWidget({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        child: Text(
            title,
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
            shadows: shadowText,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      SizedBox(width: 8),
      Expanded(
        flex: 2,
        child: Text(
          value,
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
            shadows: shadowText,
          ),
          textAlign: TextAlign.justify,
        ),
      ),
    ],);
  }
}
