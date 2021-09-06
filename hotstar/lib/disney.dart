import 'package:carousel_slider/carousel_slider.dart';
import 'package:custom_switch_button/custom_switch_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class disney extends StatefulWidget {
  const disney({Key? key}) : super(key: key);

  @override
  _disneyState createState() => _disneyState();
}

class _disneyState extends State<disney> {
  final List<String> imgList = [
    "assets/dis1.gif",
    "assets/dis2.gif",
    "assets/dis3.gif",
    "assets/dis4.gif",
    "assets/dis5.gif",
  ];

  final List<String> imgList1 = [
    "assets/lt1.jpg",
    "assets/lt2.jpg",
    "assets/lt3.jpg",
    "assets/lt4.jpg",
    "assets/lt5.jpg",
    "assets/lt6.jpg",
    "assets/lt11.jpg",
    "assets/lt7.jpg",
    "assets/lt8.jpg",
    "assets/lt9.png",
    "assets/lt10.jpg",
  ];

  final List<String> imgList2 = [
    "assets/k8.jpg",
    "assets/k1.jpg",
    "assets/k3.jpg",
    "assets/k4.jpg",
    "assets/k5.jpg",
    "assets/k10.jpg",
    "assets/k7.jpg",
    "assets/k2.png",
    "assets/k9.jpg",
    "assets/k6.png",
  ];

  final List<String> imgList3 = [
    "assets/d2.jpg",
    "assets/d1.jpg",
    "assets/d3.jpg",
    "assets/d4.jpg",
    "assets/d5.jpg",
    "assets/d6.jpg",
    "assets/d7.jpg",
    "assets/d8.jpg",
    "assets/d9.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;

    h /= 100;
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Container(
                  height: h * 6,
                  child: Transform.translate(
                      offset: Offset(-20.0, -3.0),
                      child: Image.asset("assets/dis.png"))),
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
                      children: [
                        Container(
                          color: Color(0xff0E1114),
                          child: CarouselSlider(
                            options: CarouselOptions(
                              autoPlay: false,
                              viewportFraction: 1,
                              aspectRatio: 2.0,
                              enlargeCenterPage: false,
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
                                                  BorderRadius.circular(0),
                                              image: new DecorationImage(
                                                  image: AssetImage(item),
                                                  fit: BoxFit.cover)),
                                        ),
                                      )),
                                    ))
                                .toList(),
                          ),
                        ),
                        Container(
                          height: h * 15,
                          width: MediaQuery.of(context).size.width - 5,
                          child: Image.asset("assets/dddi.jpeg"),
                        ),
                        carousalHeading(h, "Recommended For You"),
                        Carousal(h, imgList1),
                        carousalHeading(h, "Disney Junior Series"),
                        Carousal(h, imgList2),
                        carousalHeading(h, "Documentary"),
                        Carousal(h, imgList3),
                      ],
                    )))));
  }

  Padding carousalHeading(double h, String str) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, top: 10, right: 15),
      child: Container(
        height: h * 4,
        child: Expanded(
          child: Row(
            children: [
              Expanded(
                flex: 10,
                child: Text(
                  str,
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
    );
  }

  Padding Carousal(double h, List<String> imgList) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
      child: Container(
        child: CarouselSlider(
          options: CarouselOptions(
            autoPlay: false,
            aspectRatio: 3.5,
            viewportFraction: 0.3,
            disableCenter: true,
            enlargeCenterPage: true,
            height: h * 25,
            initialPage: 1,
            enableInfiniteScroll: false,
          ),
          items: imgList
              .map((item) => Container(
                    child: Center(
                        child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          image: new DecorationImage(
                              image: AssetImage(item), fit: BoxFit.cover)),
                    )),
                  ))
              .toList(),
        ),
      ),
    );
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
