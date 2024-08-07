import 'package:flutter/material.dart';
import 'package:netflix_ui/global/app_router.dart';
import 'package:netflix_ui/screens/username/widges/username_banner.dart';

class Username extends StatelessWidget {
  const Username({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Column(
          children: [
            SizedBox(height: size.height * 0.035),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 100,
                ),
                Image.asset(
                  'assets/images/netflix_logo1.png',
                  width: 180,
                ),
                Image.asset(
                  'assets/icons/pencil.png',
                  width: 100,
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.18,
            ),
            const UsernameBanner(
              urlFirst: 'assets/images/rectangle4.png',
              textFirst: 'Emenalo',
              urlSecond: 'assets/images/rectangle3.png',
              textSecond: 'Onyeka',
            ),
            const UsernameBanner(
              urlFirst: 'assets/images/rectangle2.png',
              textFirst: 'Thelma',
              urlSecond: 'assets/images/rectangle1.png',
              textSecond: 'Kids',
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    GestureDetector(
                        onTap: () =>
                            Navigator.pushNamed(context, AppRouter.home),
                        child: Image.asset('assets/icons/orther.png')),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      'Add profile',
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
