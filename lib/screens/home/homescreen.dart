import 'package:flutter/material.dart';
import 'package:netflix_ui/screens/home/widgets/homescreen_header.dart';
import 'package:netflix_ui/screens/home/widgets/homescreen_reviews.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            HomeScreenHeader(size: size),
            HomeScreenPreviews(size: size),
            HomeScreenPreviews(size: size),
          ],
        ),
      ),
    );
  }
}
