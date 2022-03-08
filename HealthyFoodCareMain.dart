import 'package:ayurveda/BooksTab/Books.dart';
import 'package:ayurveda/Home/Home_Remedies/Health_Tips/BoostYourImmunity.dart';
import 'package:ayurveda/Home/Home_Remedies/Health_Tips/HeartAndBrain.dart';
import 'package:ayurveda/Home/Home_Remedies/Health_Tips/SixTastes.dart';
import 'package:ayurveda/Home/Home_Remedies/Health_Tips/SummerTimeFood.dart';
import 'package:ayurveda/Home/Home_Remedies/Health_Tips/WinterTimeFood.dart';
import 'package:ayurveda/Models/HealthyFoodCareModel.dart';
import 'package:ayurveda/MyAppBar.dart';
import 'package:ayurveda/MyReusableWidgets.dart';
import 'package:flutter/material.dart';

import 'GoodDigestion.dart';

class HealthCareHome extends StatefulWidget {
  @override
  _HealthCareHomeState createState() => _HealthCareHomeState();
}

class _HealthCareHomeState extends State<HealthCareHome> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
//    indexingDynamic();
  }

  @override
  Widget build(BuildContext context) {
    var phnWidth = MediaQuery.of(context).size.width;
    var phnHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: MyAppBar(
          title: MyText(
            text: "Healthy Food Care",
            textScaleFactor: 1.0,
          ),
          automaticallyImplyLeading: true,
        ),
        body: Material(
          child: Container(
//            color: Colors.red,
//            height: phnHeight,
              padding: EdgeInsets.only(left: 13, right: 13),
              child: ListView.builder(
                itemCount: healthyFoodCareModelData.length,
                itemBuilder: (context, i) {
                  return MyOnePackOfSkinCareHome(
                    phnWidth: phnWidth / 2.28,
                    networkImage1:
                        healthyFoodCareModelData[i].networkImage1,
                    networkImage2:
                        healthyFoodCareModelData[i].networkImage2,
                    imageName1: healthyFoodCareModelData[i].imageName1,
                    imageName2: healthyFoodCareModelData[i].imageName2,
                    nextPage1: healthyFoodCareModelData[i].nextPage1,
                    nextPage2: healthyFoodCareModelData[i].nextPage2,
                  );
                },
              ),
          ),
        ));
  }
}
