import 'package:ayurveda/Home/Home_Remedies/Skin_Care/DarkCircle.dart';
import 'package:flutter/material.dart';

import '../Home/Home_Remedies/Health_Tips/BoostYourImmunity.dart';
import '../Home/Home_Remedies/Health_Tips/GoodDigestion.dart';
import '../Home/Home_Remedies/Health_Tips/HeartAndBrain.dart';
import '../Home/Home_Remedies/Health_Tips/SixTastes.dart';
import '../Home/Home_Remedies/Health_Tips/SummerTimeFood.dart';
import '../Home/Home_Remedies/Health_Tips/WinterTimeFood.dart';

class SkinCareModel {

  final String networkImage1;
  final String networkImage2;
  final String imageName1;
  final String imageName2;
  final Widget nextPage1;
  final Widget nextPage2;

  SkinCareModel({this.networkImage1, this.networkImage2, this.imageName1, this.imageName2, this.nextPage1, this.nextPage2});
}

//Network URLs
String url1 = "https://images.pexels.com/photos/792994/pexels-photo-792994.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=500&w=500";
String url2 = "https://images.pexels.com/photos/3985302/pexels-photo-3985302.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=500&w=500";
String url3 = "https://img.freepik.com/free-photo/doctor-applying-cream-baby-s-skin-with-blisters-rash-caused-by-chickenpox_120794-68.jpg?size=626&ext=jpg";
String url4 = "https://images.pexels.com/photos/1201758/pexels-photo-1201758.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=500&w=500";
String url5 = "https://www.dabur.com/daburarogya/images/ailmentinner/Mouth%20ulcers.jpg";
String url6 = "https://images.pexels.com/photos/763546/pexels-photo-763546.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=500&w=500";

//ImageNames
List<String> imageNames=[
  "Dark Circle",
  "Acne",
  "Chicken Pox",
  "Hyperpigmentation",
  "Blister",
  "Tanning",
];



List<SkinCareModel> skinCareModelData = [
  SkinCareModel(
      networkImage1: url1,
      networkImage2: url2,
      imageName1: imageNames[0],
      imageName2: imageNames[1],
      nextPage1: DarkCircle(title: imageNames[0],networkImage: url1,),
      nextPage2: SixTastes(title: imageNames[1], networkImage: url2)),
  SkinCareModel(
      networkImage1: url3,
      networkImage2: url4,
      imageName1: imageNames[2],
      imageName2: imageNames[3],
      nextPage1: SummerTimeFood(title: imageNames[2], networkImage: url3,),
      nextPage2: WinterTimeFood(title: imageNames[3], networkImage: url4)),
  SkinCareModel(
      networkImage1: url5,
      networkImage2: url6,
      imageName1: imageNames[4],
      imageName2: imageNames[5],
      nextPage1: GoodDigestion(title: imageNames[4], networkImage: url5,),
      nextPage2: HeartAndBrain(title: imageNames[5], networkImage: url6)),

];
