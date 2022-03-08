import 'package:ayurveda/MyReusableWidgets.dart';
import 'package:flutter/material.dart';

class BoostYourImmunity extends StatelessWidget {
  final String title;
  final String networkImage;
  BoostYourImmunity({@required this.title, @required this.networkImage});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: AppBar(title: Text(this.title),),
      body: ReusableSilverAppBar(
        imageName: this.title,
        networkImage: networkImage,
          sliverChildDelegate: SliverChildListDelegate([
            Container(height: 900,
              padding: EdgeInsets.only(top: 25.0, left: 20.0, right: 20.0),
//            color:Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Text('What Dark Circle is ?', style: Theme.of(context).textTheme.headline1,),
                  ),
                ],
              ),
            )
          ]),
      ),
    );
  }
}

