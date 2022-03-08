import 'package:ayurveda/About_usTab/AboutUs.dart';
import 'package:ayurveda/BodyClockTab/BodyClock.dart';
import 'package:ayurveda/BooksTab/Books.dart';
import 'package:ayurveda/Home/HomeTab.dart';
import 'package:flutter/material.dart';
import 'animated_bottom_bar.dart';

class BottomBarNavigationPatternExample extends StatefulWidget {
  final List<BarItem> barItems = [
    BarItem(
      text: "Home",
      iconData: Icons.home,
//      color: Colors.indigo,
    ),
    BarItem(
      text: "Likes",
      iconData: Icons.favorite_border,
//      color: Colors.pinkAccent,
    ),
    BarItem(
      text: "Search",
      iconData: Icons.search,
//      color: Colors.yellow.shade900,
    ),
    BarItem(
      text: "About us",
      iconData: Icons.info,
//      color: Colors.teal,
    ),
  ];

  @override
  _BottomBarNavigationPatternExampleState createState() =>
      _BottomBarNavigationPatternExampleState();
}

class _BottomBarNavigationPatternExampleState
    extends State<BottomBarNavigationPatternExample> {
  int selectedBarIndex = 0;

  final tabs =[
    HomeTab(),
    BodyClock(),
    Books(),
    AboutUs()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[selectedBarIndex],
//      AnimatedContainer(
//          color: widget.barItems[selectedBarIndex].color,
////        color: Colors.white,
//        duration: const Duration(milliseconds: 5000),
//        child: tabs[selectedBarIndex],
//      ),
      bottomNavigationBar: AnimatedBottomBar(
          barItems: widget.barItems,
//          animationDuration: const Duration(milliseconds: 200),
          barStyle: BarStyle(
//              fontSize: 14.0,
////              iconSize: 22.5,
////              letterSpacing: 1.0,
          ),
          onBarTap: (index) {
            setState(() {
              selectedBarIndex = index;
            });
          }),
    );
  }
}