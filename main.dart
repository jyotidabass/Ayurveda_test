import 'package:flutter/material.dart';
import 'bottom_bar_navigation_pattern/bottom_bar_navigation_pattern_example.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Simple Animations',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        accentColor: Colors.white,
        textTheme: TextTheme(
            headline1: TextStyle(color: Colors.black54.withOpacity(0.5), fontSize: 34.0, fontWeight: FontWeight.w400,),
            bodyText1: GoogleFonts.tenaliRamakrishna(textStyle: TextStyle(color: Colors.black54, fontSize: 22.0, fontWeight: FontWeight.w300, letterSpacing: 0.7)),
            subtitle1: TextStyle(color: Colors.black),
            button: TextStyle(color: Colors.white)),
      ),
      home: BottomBarNavigationPatternExample(),
    );
  }
}