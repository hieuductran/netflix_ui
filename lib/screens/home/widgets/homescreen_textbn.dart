import 'package:flutter/material.dart';

class HomescreenTextbn extends StatelessWidget {
  final String text;
  const HomescreenTextbn({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(fontSize: 23, color: Colors.white),
    );
  }
}
