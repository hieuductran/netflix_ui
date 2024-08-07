import 'package:flutter/material.dart';
import 'package:netflix_ui/global/app_router.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // thời gian chờ 5s
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushNamed(context, AppRouter.username);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.black,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/logo-netflix.png'),
            const CircularProgressIndicator(
              color: Colors.red,
            )
          ],
        ),
      ),
    ));
  }
}
