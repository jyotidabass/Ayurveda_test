import 'package:ayurveda/MyReusableWidgets.dart';
import 'package:flutter/material.dart';

class DarkCircle extends StatelessWidget {
  final String title;
  final String networkImage;
  DarkCircle({@required this.title, @required this.networkImage});
  @override
  Widget build(BuildContext context) {
    var headline1 = Theme.of(context).textTheme.headline1;
    var bodyText1 = Theme.of(context).textTheme.bodyText1;
    return Scaffold(
//      appBar: AppBar(title: Text(this.title),),
      body: ReusableSilverAppBar(
        imageName: this.title,
        networkImage: networkImage,
        sliverChildDelegate: SliverChildListDelegate([
          Container(height: 900,
            padding: EdgeInsets.only(top: 25.0, left: 20.0, right: 20.0),
            color:Colors.grey.withOpacity(0.1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(bottom: 25.0),
                  child: Text('What DarkCircle is ?', style: headline1,),
                ),
                Container(
                  child: Text("Dark circles are quite common and usually don't imply a serious health concern. However, their appearance still causes a lot"
                      " of stress among people.\nEven if you take good care of your skin and have a healthy complexion, appearance of those darkened areas under"
                      "the eyes will make you look old, tired and dull.", style: bodyText1,),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}