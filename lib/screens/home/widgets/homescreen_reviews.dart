import 'package:flutter/material.dart';
import 'package:netflix_ui/screens/home/widgets/homescreen_reviews_img.dart';

class HomeScreenPreviews extends StatelessWidget {
  const HomeScreenPreviews({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: size.height * 0.27,
      color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Previews',
            style: TextStyle(
                fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                HomeScreenReviewsImg(
                  size: size,
                  url: 'assets/images/slides/slide_1.jpg',
                ),
                HomeScreenReviewsImg(
                  size: size,
                  url: 'assets/images/slides/slide_2.jpg',
                ),
                HomeScreenReviewsImg(
                  size: size,
                  url: 'assets/images/slides/slide_3.jpg',
                ),
                HomeScreenReviewsImg(
                  size: size,
                  url: 'assets/images/slides/slide_4.jpg',
                ),
                HomeScreenReviewsImg(
                  size: size,
                  url: 'assets/images/slides/slide_5.jpg',
                ),
                HomeScreenReviewsImg(
                  size: size,
                  url: 'assets/images/slides/slide_6.jpg',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
