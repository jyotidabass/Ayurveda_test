
import 'package:ayurveda/BooksTab/Books.dart';
import 'package:ayurveda/Home/Food_and_Diet/Recipes/RecipesMain.dart';
import 'package:ayurveda/Home/Home_Remedies/Hair_Care/HairCareMain.dart';
import 'package:ayurveda/Home/Home_Remedies/Health_Tips/HealthyFoodCareMain.dart';
import 'package:ayurveda/Home/Home_Remedies/Skin_Care/SkinCareMain.dart';
import 'package:ayurveda/MyAppBar.dart';
import 'package:ayurveda/MyReusableWidgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeTab extends StatefulWidget {
  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  int i = 2;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var phnWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: MyAppBar(
          title: MyText(text:"Home",letterSpacing: 1.0,fontWeight: FontWeight.w600,),
          automaticallyImplyLeading: false,
          actions: <Widget>[
            IconButton(icon: Icon(Icons.refresh), onPressed: (){
              setState(() {print("done");});
            })
          ],
        ),
        body: Material(
          child: SingleChildScrollView(
            child: Container(
//              color: Colors.yellow,
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.orangeAccent.withOpacity(0.8)),
                    margin: EdgeInsets.only(
                      top: 15.0,
                    ),
                    height: 90.0,
                    child: Center(
                      child: ListTile(
                        title: Icon(
                          Icons.all_inclusive,
                          color: Colors.white,
                        ),
                        subtitle: MyText(
                          text: "KNOW YOUR PRAKRATI",
                          fontSize: 25.0,
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                          texAlign: TextAlign.center,
                          letterSpacing: 1.0,
                          textScaleFactor: 1.0,
                        ),
                      ),
                    ),
                  ),
                  MyOnePackOfHome(
                      heading: "Home Remedies",
                      nextPage1: SkinCare(),
                      nextPage2: HairCareHome(),
                      nextPage3: HealthCareHome(),
                      phnWidth: phnWidth/3.5,
                      imageAssetName1: "assets/woman-getting-a-facial-treatment.jpg",
                      imageAssetName2: "assets/grey-hair-blower-near-pink-hair-combs-and-scrunchies.jpg",
                      imageAssetName3: "assets/food-on-white-background.jpg",
                      imageName1: "Skin Care",
                      imageName2: "Hair Care",
                      imageName3: "Health Food Care"
                  ),
                  MyOnePackOfHome(
                      heading: "Food and Diet",
                      nextPage1: Books(),
                      nextPage2: Books(),
                      nextPage3: RecipesMain(),
                      phnWidth: phnWidth/3.5,
                      imageAssetName1: "assets/cooked-food-served-on-white-ceramic-bowl.jpg",
                      imageAssetName2: "assets/Viruddha-Aahar.jpg",
                      imageAssetName3: "assets/recipes-banner .jpg",
                      imageName1: "Diet Plan",
                      imageName2: "Incompatible food combining",
                      imageName3: "Recipes"
                  ),
                  MyOnePackOfHome(
                      heading: "Lifestyle",
                      nextPage1: Books(),
                      nextPage2: Books(),
                      nextPage3: Books(),
                      phnWidth: phnWidth/3.5,
                      imageAssetName1: "assets/morning.jpg",
                      imageAssetName2: "assets/day.jpg",
                      imageAssetName3: "assets/evening.jpg",
                      imageName1: "Morning Routine",
                      imageName2: "Day Routine",
                      imageName3: "Evening Routine"
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 15.0, top: 10.0),
                    height: 140,
                    child: MyHomeImageMaterial(
                        imageNameAsset: "assets/do-and-dont.jpg",
                        onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> Books())),
                    ),
                  ),
                  MyHomeImageRow(
                      children: [
                        MyText(text: "Do's and Dont's", fontSize: 20,)
                      ],
                      mainAxisAlignment: MainAxisAlignment.center
                  ),
                  MyOnePackOfHome(
                      heading: "Fitness",
                      nextPage1: Books(),
                      nextPage2: Books(),
                      nextPage3: Books(),
                      phnWidth: phnWidth/3.5,
                      imageAssetName1: "assets/yoga.jpg",
                      imageAssetName2: "assets/meditation.jpg",
                      imageAssetName3: "assets/exercise.jpg",
                      imageName1: "Yoga",
                      imageName2: "Meditation",
                      imageName3: "Exercise"
                  ),

                ],
              ),
            ),
          ),
        ));
  }
}
