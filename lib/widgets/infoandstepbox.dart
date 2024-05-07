import 'package:flutter/material.dart';

class InfoAndStepBox extends StatelessWidget {
  String text;
  InfoAndStepBox({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 16.0,
      ),
    );
  }
}
