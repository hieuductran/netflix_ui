import 'package:flutter/material.dart';

class UsernameBanner extends StatelessWidget {
  final String urlFirst;
  final String textFirst;
  final String urlSecond;
  final String textSecond;
  final double padding;
  final double space;
  const UsernameBanner(
      {super.key,
      required this.urlFirst,
      required this.textFirst,
      required this.textSecond,
      required this.urlSecond,
      this.padding = 8.0,
      this.space = 20});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(padding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Image.asset(urlFirst),
              const SizedBox(
                height: 8,
              ),
              Text(
                textFirst,
                style: const TextStyle(color: Colors.white, fontSize: 17),
              )
            ],
          ),
          SizedBox(
            width: space,
          ),
          Column(
            children: [
              Image.asset(urlSecond),
              const SizedBox(
                height: 8,
              ),
              Text(
                textSecond,
                style: const TextStyle(color: Colors.white, fontSize: 17),
              )
            ],
          ),
        ],
      ),
    );
  }
}
