import 'package:ayurveda/Models/RecipesModel.dart';
import 'package:flutter/material.dart';
import 'package:ayurveda/BooksTab/Books.dart';
import 'package:ayurveda/MyAppBar.dart';
import 'package:ayurveda/MyReusableWidgets.dart';
import 'package:ayurveda/main.dart';

class RecipesMain extends StatefulWidget {
  @override
  _RecipesMainState createState() => _RecipesMainState();
}

class _RecipesMainState extends State<RecipesMain> {
  @override
  Widget build(BuildContext context) {
    var phnWidth = MediaQuery.of(context).size.width;
    var phnHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: MyAppBar(
        title: MyText(
          text: "Recipes",
        ),
        automaticallyImplyLeading: true,
      ),
      body: Material(
        child: Container(
//            color: Colors.red,
//              height: phnHeight,
            padding: EdgeInsets.only(left: 13, right: 13),
            child: ListView.builder(
              itemCount: recipesModelData.length,
              itemBuilder: (context, i) {
                return MyOnePackOfSkinCareHome(
                  height: 200,
                  phnWidth: phnWidth / 2.28,
                  networkImage1:
                  recipesModelData[i].networkImage1,
                  networkImage2:
                  recipesModelData[i].networkImage2,
                  imageName1: recipesModelData[i].imageName1,
                  imageName2: recipesModelData[i].imageName2,
                  nextPage1: recipesModelData[i].nextPage1,
                  nextPage2: recipesModelData[i].nextPage2,
                );
              },
            ),
        ),
      ),
    );
  }
}
