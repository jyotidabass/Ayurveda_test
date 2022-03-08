import 'package:ayurveda/BooksTab/Books.dart';
import 'package:ayurveda/Models/HairCareModel.dart';
import 'package:ayurveda/MyAppBar.dart';
import 'package:ayurveda/MyReusableWidgets.dart';
import 'package:flutter/material.dart';

class HairCareHome extends StatefulWidget {
  @override
  _HairCareHomeState createState() => _HairCareHomeState();
}

class _HairCareHomeState extends State<HairCareHome> {
  @override
  Widget build(BuildContext context) {
    var phnWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: MyAppBar(
        title: MyText(
          text: "Hair Care",
        ),
        automaticallyImplyLeading: true,
      ),
      body: Material(
        child: Container(
            padding: EdgeInsets.only(left: 13, right: 13),
            child: ListView.builder(
              itemCount: hairCareModelData.length,
              itemBuilder: (context, i) {
                return MyOnePackOfSkinCareHome(
                  phnWidth: phnWidth / 2.28,
                  networkImage1:
                  hairCareModelData[i].networkImage1,
                  networkImage2:
                  hairCareModelData[i].networkImage2,
                  imageName1: hairCareModelData[i].imageName1,
                  imageName2: hairCareModelData[i].imageName2,
                  nextPage1: hairCareModelData[i].nextPage1,
                  nextPage2: hairCareModelData[i].nextPage2,
                );
              },
            ),
        ),
      ),
    );
  }
}
