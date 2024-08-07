import 'package:flutter/material.dart';
import 'package:netflix_ui/screens/home/widgets/homescreen_feather.dart';
import 'package:netflix_ui/screens/home/widgets/homescreen_textbn.dart';

class HomeScreenHeader extends StatelessWidget {
  const HomeScreenHeader({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: size.height * 0.65,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/banner_home.png'),
                  fit: BoxFit.cover)),
        ),
        Container(
          height: size.height * 0.65,
          width: size.width,
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(0, 0, 0, 0),
            Color.fromARGB(228, 0, 0, 0)
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        ),
        Positioned(
          top: 50,
          child: SizedBox(
            width: size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  'assets/images/netflix_logo0.png',
                  width: 50,
                ),
                const HomescreenTextbn(text: 'TV Shows'),
                const HomescreenTextbn(text: 'Movies'),
                const HomescreenTextbn(text: 'My List'),
              ],
            ),
          ),
        ),
        Positioned(
            bottom: 100,
            child: SizedBox(
              width: size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/hd.png',
                  ),
                  const Text(
                    '  #2 in Nigeria Today',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            )),
        Positioned(
            bottom: 30,
            child: SizedBox(
              width: size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const HomescreenFeather(
                      url: 'assets/images/feather_add.png', text: 'My List'),
                  Container(
                    padding: const EdgeInsets.all(10),
                    width: 140,
                    height: 60,
                    decoration: const BoxDecoration(
                        color: Color(0xFFC4C4C4),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset('assets/images/vector.png'),
                        const Text(
                          'PLAY',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  const HomescreenFeather(
                      url: 'assets/images/feather_info.png', text: ' Info  '),
                ],
              ),
            ))
      ],
    );
  }
}
