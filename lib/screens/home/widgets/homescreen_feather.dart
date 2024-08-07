import 'package:flutter/material.dart';

class HomescreenFeather extends StatelessWidget {
  final String url;
  final String text;
  const HomescreenFeather({super.key, required this.url, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          url,
        ),
        Text(
          text,
          style: const TextStyle(
              color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
