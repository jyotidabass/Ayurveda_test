import 'package:flutter/material.dart';

import '../Home/Home_Remedies/Health_Tips/BoostYourImmunity.dart';
import '../Home/Home_Remedies/Health_Tips/GoodDigestion.dart';
import '../Home/Home_Remedies/Health_Tips/HeartAndBrain.dart';
import '../Home/Home_Remedies/Health_Tips/SixTastes.dart';
import '../Home/Home_Remedies/Health_Tips/SummerTimeFood.dart';
import '../Home/Home_Remedies/Health_Tips/WinterTimeFood.dart';

class HairCareModel {

  final String networkImage1;
  final String networkImage2;
  final String imageName1;
  final String imageName2;
  final Widget nextPage1;
  final Widget nextPage2;

  HairCareModel({this.networkImage1, this.networkImage2, this.imageName1, this.imageName2, this.nextPage1, this.nextPage2});
}

//Network URLs
String url1 = "https://www.thebetterindia.com/wp-content/uploads/2020/01/Workshops-88.jpg";
String url2 = "https://images.pexels.com/photos/3812746/pexels-photo-3812746.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500";
String url3 = "https://images.pexels.com/photos/3812745/pexels-photo-3812745.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500";
String url4 = "https://images.pexels.com/photos/1159334/pexels-photo-1159334.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500";
String url5 = "https://images.pexels.com/photos/973401/pexels-photo-973401.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500";
String url6 = "https://images.pexels.com/photos/1085733/pexels-photo-1085733.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500";
//https://images.pexels.com/photos/1085733/pexels-photo-1085733.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500
//ImageNames
List<String> imageNames=[
  "Hair Fall Control",
  "Premature grey hair",
  "Dandruff",
  "Dry Hair",
  "Oily Hair",
  "Healthy Hair Tips",
];



List<HairCareModel> hairCareModelData = [
  HairCareModel(
      networkImage1: url1,
      networkImage2: url2,
      imageName1: imageNames[0],
      imageName2: imageNames[1],
      nextPage1: BoostYourImmunity(title: imageNames[0],networkImage: url1,),
      nextPage2: SixTastes(title: imageNames[1], networkImage: url2)),
  HairCareModel(
      networkImage1: url3,
      networkImage2: url4,
      imageName1: imageNames[2],
      imageName2: imageNames[3],
      nextPage1: SummerTimeFood(title: imageNames[2], networkImage: url3,),
      nextPage2: WinterTimeFood(title: imageNames[3], networkImage: url4)),
  HairCareModel(
      networkImage1: url5,
      networkImage2: url6,
      imageName1: imageNames[4],
      imageName2: imageNames[5],
      nextPage1: GoodDigestion(title: imageNames[4], networkImage: url5,),
      nextPage2: HeartAndBrain(title: imageNames[5], networkImage: url6)),

];
