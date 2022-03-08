import 'package:ayurveda/BooksTab/Books.dart';
import 'package:ayurveda/Models/SkinCareModel.dart';
import 'package:ayurveda/MyAppBar.dart';
import 'package:ayurveda/MyReusableWidgets.dart';
import 'package:ayurveda/main.dart';
import 'package:flutter/material.dart';

class SkinCare extends StatefulWidget {
  @override
  _SkinCareState createState() => _SkinCareState();
}

class _SkinCareState extends State<SkinCare> {
  @override
  Widget build(BuildContext context) {
    var phnWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: MyAppBar(
        title: MyText(text: "Skin Care",),
        automaticallyImplyLeading: true,
      ),
      body: Material(
        child: Container(
//            height: phnHeight,
//            color: Colors.red,
          padding: EdgeInsets.only(left: 13, right: 13),
          child: ListView.builder(
            itemCount: skinCareModelData.length,
            itemBuilder: (context, i) {
              return MyOnePackOfSkinCareHome(
                phnWidth: phnWidth / 2.28,
                networkImage1:
                skinCareModelData[i].networkImage1,
                networkImage2:
                skinCareModelData[i].networkImage2,
                imageName1: skinCareModelData[i].imageName1,
                imageName2: skinCareModelData[i].imageName2,
                nextPage1: skinCareModelData[i].nextPage1,
                nextPage2: skinCareModelData[i].nextPage2,
              );
            },
          ),
        ),
      ),
    );
  }
}
