import 'package:flutter/material.dart';
import 'package:netflix_ui/screens/home/homescreen.dart';
import 'package:netflix_ui/screens/splash/splash.dart';
import 'package:netflix_ui/screens/username/username.dart';

class AppRouter {
  static MaterialPageRoute<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute<dynamic>(
      builder: (BuildContext context) => makeRouter(
          nameRoute: settings.name!,
          context: context,
          arguments: settings.arguments),
    );
  }

  static makeRouter(
      {required String nameRoute,
      required BuildContext context,
      Object? arguments}) {
    switch (nameRoute) {
      case splash:
        return const Splash();
      case username:
        return const Username();
      case home:
        return const HomeScreen();
      default:
    }
  }

  static const String splash = '/';
  static const String username = 'username';
  static const String home = 'home';
}
