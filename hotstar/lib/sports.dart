import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:custom_switch_button/custom_switch_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class sports extends StatefulWidget {
  const sports({Key? key}) : super(key: key);

  @override
  _sportsState createState() => _sportsState();
}

class _sportsState extends State<sports> {
  final List<String> imgList = [
    "assets/s1.jpg",
    "assets/s5.jpg",
    "assets/s3.jpg",
    "assets/s2.jpg",
    "assets/s4.jpg",
  ];
  final List<String> imgList1 = [
    "assets/n1.jpg",
    "assets/n2.jpg",
    "assets/n3.jpg",
  ];

  final List<String> imgList2 = [
    "assets/sp5.jpg",
    "assets/sp1.jpg",
    "assets/sp3.jpg",
    "assets/sp2.jpeg",
    "assets/sp4.jpg",
    "assets/sp6.jpg",
    "assets/sp7.jpg",
    "assets/sp10.jpg",
    "assets/sp8.jpg",
    "assets/sp9.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;

    h /= 100;
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Container(
                  height: h * 7,
                  child: Transform.translate(
                      offset: Offset(-30.0, 0.0),
                      child: Image.asset("assets/hotstar.png"))),
              actions: [
                Icon(
                  Icons.search,
                  size: h * 3.5,
                  color: Colors.grey.shade100,
                ),
                SizedBox(
                  width: h * 3,
                )
              ],
              backgroundColor: Color(0xff0D111C),
            ),
            drawer: Container(
              width: h * 40,
              child: Drawer(
                  child: SingleChildScrollView(
                child: Container(
                  height: h * 100,
                  color: Color(0xff101211),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          flex: 1,
                          child: Row(
                            children: [
                              Expanded(
                                flex: 3,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 5),
                                      child: Transform.translate(
                                        offset: Offset(-18.0, 10.0),
                                        child: Text(
                                          "Madhu",
                                          style: GoogleFonts.roboto(
                                              color: Colors.white,
                                              fontSize: h * 3),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 0),
                                      child: Transform.translate(
                                        offset: Offset(0.0, 2.0),
                                        child: Text(
                                          "+91 9360627854",
                                          style: GoogleFonts.roboto(
                                              color: Colors.grey,
                                              fontSize: h * 2),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: SizedBox(
                                  width: h * 2,
                                ),
                              ),
                              Expanded(
                                child: FaIcon(
                                  Icons.chevron_right,
                                  size: h * 3,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          )),
                      Expanded(
                          child: Container(
                        color: Color(0xff1B1F20),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 3,
                              child: Container(
                                  height: h * 2.6,
                                  child: Image.asset("assets/ks.png")),
                            ),
                            Expanded(
                              flex: 1,
                              child: SizedBox(
                                width: h * 1,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: h * 2,
                                child: CustomSwitchButton(
                                  backgroundColor: Colors.blueGrey,
                                  unCheckedColor: Colors.white,
                                  buttonHeight: h * 3,
                                  indicatorWidth: h * 3,
                                  animationDuration:
                                      Duration(milliseconds: 400),
                                  checkedColor: Colors.lightGreen,
                                  checked: false,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: SizedBox(
                                width: h * 0.5,
                              ),
                            ),
                          ],
                        ),
                      )),
                      Expanded(
                          flex: 8,
                          child: Column(
                            children: [
                              Tiles(
                                  FaIcon(
                                    Icons.download,
                                    size: h * 4,
                                    color: Colors.grey,
                                  ),
                                  "Downloads",
                                  "Watch videos offline",
                                  h),
                              Tiles(
                                  FaIcon(
                                    Icons.view_list,
                                    size: h * 4,
                                    color: Colors.grey,
                                  ),
                                  "Watchlist",
                                  "Save to watch later",
                                  h),
                              Tiles(
                                  FaIcon(
                                    Icons.wallet_giftcard,
                                    size: h * 4,
                                    color: Colors.grey,
                                  ),
                                  "Prizes",
                                  "Prizes you have won",
                                  h),
                              Tiles(
                                  FaIcon(
                                    Icons.video_collection,
                                    size: h * 4,
                                    color: Colors.grey,
                                  ),
                                  "Channels",
                                  "",
                                  h),
                              Tiles(
                                  FaIcon(
                                    Icons.language,
                                    size: h * 4,
                                    color: Colors.grey,
                                  ),
                                  "Languages",
                                  "",
                                  h),
                              Tiles(
                                  FaIcon(
                                    Icons.theater_comedy,
                                    size: h * 4,
                                    color: Colors.grey,
                                  ),
                                  "Genres",
                                  "",
                                  h),
                              Divider(
                                height: h * 1,
                                color: Colors.grey.shade700,
                              ),
                              Tiles(
                                  FaIcon(
                                    Icons.help,
                                    size: h * 4,
                                    color: Colors.grey,
                                  ),
                                  "Help",
                                  "",
                                  h),
                              Divider(
                                height: h * 1,
                                color: Colors.grey.shade700,
                              ),
                            ],
                          )),
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Privacy Policy    ~ T&C",
                                style: GoogleFonts.roboto(
                                    fontSize: h * 2.3,
                                    color: Colors.blueGrey.shade700)),
                            SizedBox(
                              height: h * 1,
                            ),
                            Text("v11.4.5.988",
                                style: GoogleFonts.roboto(
                                    fontSize: h * 1.6,
                                    color: Colors.blueGrey.shade700)),
                          ],
                        ),
                      )),
                    ],
                  ),
                ),
              )),
            ),
            body: SingleChildScrollView(
              child: Container(
                color: Color(0xff0E1114),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Container(
                        color: Color(0xff252627),
                        height: h * 35,
                        child: Expanded(
                          child: Column(
                            children: [
                              Expanded(
                                  flex: 3,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5, vertical: 10),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          image: new DecorationImage(
                                              image:
                                                  AssetImage("assets/rumm.gif"),
                                              fit: BoxFit.fill)),
                                    ),
                                  )),
                              Expanded(
                                  child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                child: Row(
                                  children: [
                                    Expanded(
                                        child: Transform.translate(
                                      offset: Offset(0.0, -5.0),
                                      child: Container(
                                        height: h * 5.5,
                                        decoration: BoxDecoration(
                                            image: new DecorationImage(
                                                image: AssetImage(
                                                    "assets/rum.png"))),
                                      ),
                                    )),
                                    Expanded(
                                        flex: 4,
                                        child: Column(
                                          children: [
                                            Expanded(
                                                flex: 2,
                                                child: Row(
                                                  children: [
                                                    Expanded(
                                                        child: Container(
                                                      decoration: BoxDecoration(
                                                          image: new DecorationImage(
                                                              image: AssetImage(
                                                                  "assets/ad.png"))),
                                                    )),
                                                    Expanded(
                                                        flex: 5,
                                                        child: Text(
                                                          "Rummytime",
                                                          style: GoogleFonts
                                                              .roboto(
                                                                  fontSize:
                                                                      h * 2.6,
                                                                  color: Colors
                                                                      .grey
                                                                      .shade300),
                                                        )),
                                                  ],
                                                )),
                                            Expanded(
                                                child: Transform.translate(
                                              offset: Offset(1.0, -7.0),
                                              child: Text(
                                                "Win 100% Welcome Bonus      ",
                                                style: GoogleFonts.roboto(
                                                    fontSize: h * 2.2,
                                                    color: Colors.grey),
                                              ),
                                            ))
                                          ],
                                        )),
                                    Expanded(
                                        flex: 2,
                                        child: Container(
                                          height: h * 5,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  width: 1,
                                                  color: Color(0xff005AFF)),
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                          child: Transform.translate(
                                            offset: Offset(h * 3, h * 1.3),
                                            child: Text(
                                              "INSTALL",
                                              style: GoogleFonts.roboto(
                                                  color: Color(0xff005AFF),
                                                  fontSize: h * 2.2),
                                            ),
                                          ),
                                        )),
                                  ],
                                ),
                              )),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      color: Color(0xff0E1114),
                      child: CarouselSlider(
                        options: CarouselOptions(
                          autoPlay: false,
                          aspectRatio: 2.0,
                          viewportFraction: 0.85,
                          enlargeCenterPage: true,
                        ),
                        items: imgList
                            .map((item) => Container(
                                  child: Center(
                                      child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10),
                                    child: Container(
                                      width: 1000,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          image: new DecorationImage(
                                              image: AssetImage(item),
                                              fit: BoxFit.cover)),
                                    ),
                                  )),
                                ))
                            .toList(),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: Container(
                        height: h * 10,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            //color: Colors.blue,
                            gradient: RadialGradient(
                              colors: [Color(0xff0E3E92), Color(0xff000A3D)],
                              focalRadius: 100,
                              radius: 2.9,
                            )),
                        child: Expanded(
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                  child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "New",
                                    style: GoogleFonts.roboto(
                                        fontSize: h * 2, color: Colors.white),
                                  ),
                                  Text(
                                    "Arrivals",
                                    style: GoogleFonts.roboto(
                                        fontSize: h * 2, color: Colors.white),
                                  )
                                ],
                              )),
                              Expanded(
                                flex: 5,
                                child: Container(
                                  child: CarouselSlider(
                                    options: CarouselOptions(
                                      autoPlay: true,
                                      autoPlayInterval: Duration(seconds: 1),
                                      aspectRatio: 2.0,
                                      viewportFraction: 1.0,
                                      enlargeCenterPage: false,
                                    ),
                                    items: imgList1
                                        .map(
                                          (item) => Container(
                                            child: Center(
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    image: new DecorationImage(
                                                        image: AssetImage(item),
                                                        fit: BoxFit.cover)),
                                              ),
                                            ),
                                          ),
                                        )
                                        .toList(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 15, top: 10, right: 15),
                      child: Container(
                        height: h * 4,
                        child: Expanded(
                          child: Row(
                            children: [
                              Expanded(
                                flex: 10,
                                child: Text(
                                  "Popular Sports",
                                  style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w500,
                                      fontSize: h * 3,
                                      color: Colors.grey.shade300),
                                ),
                              ),
                              Expanded(
                                  child: FaIcon(
                                Icons.chevron_right,
                                size: h * 4,
                                color: Colors.grey,
                              ))
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 0, vertical: 10),
                      child: Container(
                        child: CarouselSlider(
                          options: CarouselOptions(
                            autoPlay: false,
                            aspectRatio: 2.0,
                            viewportFraction: 0.6,
                            disableCenter: true,
                            enlargeCenterPage: true,
                            height: h * 17,
                            initialPage: 1,
                            enableInfiniteScroll: false,
                          ),
                          items: imgList2
                              .map((item) => Container(
                                    child: Center(
                                      child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            image: new DecorationImage(
                                                image: AssetImage(item),
                                                fit: BoxFit.cover)),
                                        child: BackdropFilter(
                                          filter: ImageFilter.blur(
                                              sigmaX: 0.0, sigmaY: 0.0),
                                          child: Container(
                                            color:
                                                Colors.black12.withOpacity(0.3),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ))
                              .toList(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )));
  }

  ListTile Tiles(FaIcon ic, String t, String st, double h) {
    return ListTile(
      leading: ic,
      title: Text(
        t,
        style: GoogleFonts.roboto(color: Colors.white, fontSize: h * 2.5),
      ),
      subtitle: Text(
        st,
        style: GoogleFonts.roboto(color: Colors.grey, fontSize: h * 2),
      ),
    );
  }
}
