import 'package:flutter/material.dart';

import '../Home/Home_Remedies/Health_Tips/BoostYourImmunity.dart';
import '../Home/Home_Remedies/Health_Tips/GoodDigestion.dart';
import '../Home/Home_Remedies/Health_Tips/HeartAndBrain.dart';
import '../Home/Home_Remedies/Health_Tips/SixTastes.dart';
import '../Home/Home_Remedies/Health_Tips/SummerTimeFood.dart';
import '../Home/Home_Remedies/Health_Tips/WinterTimeFood.dart';

class RecipesModel {

  final String networkImage1;
  final String networkImage2;
  final String imageName1;
  final String imageName2;
  final Widget nextPage1;
  final Widget nextPage2;

  RecipesModel({this.networkImage1, this.networkImage2, this.imageName1, this.imageName2, this.nextPage1, this.nextPage2});
}

//Network URLs
String url1 = "https://images.pexels.com/photos/1092730/pexels-photo-1092730.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940";
String url2 = "https://chopracom.s3.us-west-1.amazonaws.com/field/image/the-6-tastes-of-ayurveda.jpg";
String url3 = "https://images.pexels.com/photos/2617182/pexels-photo-2617182.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500";
String url4 = "https://images.pexels.com/photos/1295572/pexels-photo-1295572.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940";
String url5 = "https://cdn.pixabay.com/photo/2018/02/27/21/55/belly-3186730_1280.jpg";
String url6 = "https://i.ndtvimg.com/i/2017-10/thali_650x400_61508157304.jpg";

//ImageNames
List<String> imageNames=[
  "Wheat Chapati",
  "Poha",
  "Upma",
  "Healthy Saag Paneer",
  "Red Lentil Soup",
  "Khitchari",
  "Carrot Subji",
  "Ojas Balls",
  "Vegetable Stew",
  "Seffron Lemonade",
  "Cilantro Chutney",
  "Cool-As-A-Cucumber Milk",
];



List<RecipesModel> recipesModelData = [
  RecipesModel(
      networkImage1: url1,
      networkImage2: url2,
      imageName1: imageNames[0],
      imageName2: imageNames[1],
      nextPage1: BoostYourImmunity(title: imageNames[0],networkImage: url1,),
      nextPage2: SixTastes(title: imageNames[1], networkImage: url2)),
  RecipesModel(
      networkImage1: url3,
      networkImage2: url4,
      imageName1: imageNames[2],
      imageName2: imageNames[3],
      nextPage1: SummerTimeFood(title: imageNames[2], networkImage: url3,),
      nextPage2: WinterTimeFood(title: imageNames[3], networkImage: url4)),
  RecipesModel(
      networkImage1: url5,
      networkImage2: url6,
      imageName1: imageNames[4],
      imageName2: imageNames[5],
      nextPage1: GoodDigestion(title: imageNames[4], networkImage: url5,),
      nextPage2: HeartAndBrain(title: imageNames[5], networkImage: url6)),

];
