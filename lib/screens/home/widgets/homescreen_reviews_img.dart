import 'package:flutter/material.dart';

class HomeScreenReviewsImg extends StatelessWidget {
  const HomeScreenReviewsImg({super.key, required this.size, required this.url});

  final Size size;
  final String url;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CircleAvatar(
        radius: size.height * 0.08,
        backgroundImage: AssetImage(
          url,
        ),
      ),
    );
  }
}
