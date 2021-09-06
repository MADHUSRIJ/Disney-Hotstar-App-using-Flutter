import 'dart:async';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:custom_switch_button/custom_switch_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotstar/disney.dart';
import 'package:hotstar/home.dart';
import 'package:hotstar/movies.dart';
import 'package:hotstar/sports.dart';
import 'package:hotstar/tv.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: splashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class splashScreen extends StatefulWidget {
  const splashScreen({Key? key}) : super(key: key);

  @override
  _splashScreenState createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Home()));
    });
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;

    double w = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            height: h,
            width: w,
            child: Image.asset(
              "assets/splash.jpg",
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _page = 0;

  List<Widget> mn = [
    home(),
    tv(),
    disney(),
    movies(),
    sports(),
  ];

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;

    h /= 100;

    return SafeArea(
      child: Scaffold(
        body: mn[_page],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _page,
          backgroundColor: Color(0xff101211),
          items: [
            BottomNavigationBarItem(
                icon: FaIcon(
                  Icons.home,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: FaIcon(
                  Icons.tv,
                ),
                label: "TV"),
            BottomNavigationBarItem(
                icon: Container(
                    height: h * 5,
                    width: h * 10,
                    child: Image.asset("assets/dis.png")),
                label: ""),
            BottomNavigationBarItem(
                icon: FaIcon(Icons.movie_filter), label: "Movies"),
            BottomNavigationBarItem(
                icon: FaIcon(Icons.sports_cricket), label: "Sports"),
          ],
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          onTap: (value) => {
            setState(() {
              _page = value;
            }),
          },
        ),
      ),
    );
  }
}
