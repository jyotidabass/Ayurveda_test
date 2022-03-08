import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

import 'BooksTab/Books.dart';



class MyHomeImageMaterial extends StatelessWidget {
  final phnWidth;
  final String imageNameAsset;
  final String imageName;
  final Function onTap;
  final double height;
  final String networkImage;
  final EdgeInsets margin;
  MyHomeImageMaterial({this.phnWidth, @required this.imageNameAsset, this.imageName, @required this.onTap, this.height, this.networkImage, this.margin});

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: margin!=null ? margin : null,
      child: GestureDetector(
        onTap: onTap,
        child: Material(
          color: Colors.transparent,
          elevation: 18.0,
          borderRadius: BorderRadius.circular(8.0),
          child: imageName!=null ? Hero(
            tag: imageName,
            child: myHomeImageMaterialDecoration(height, phnWidth, networkImage, imageNameAsset),
          ): myHomeImageMaterialDecoration(height, phnWidth, networkImage, imageNameAsset),
        ),
      ),
    );
  }

  myHomeImageMaterialDecoration(height, phnWidth, networkImage, imageNameAsset){
    return Container(
      height: height!=null ? height: 100,
      width: phnWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(5),
            topRight: Radius.circular(5),
            bottomLeft: Radius.circular(5),
            bottomRight: Radius.circular(5)),
        image: DecorationImage(
            image: AssetImage("assets/loading3.gif"), fit: BoxFit.fill
        ),
      ),
      foregroundDecoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(5),
            topRight: Radius.circular(5),
            bottomLeft: Radius.circular(5),
            bottomRight: Radius.circular(5)),
        image: DecorationImage(
            image: networkImage!=null? CachedNetworkImageProvider(networkImage) :AssetImage(imageNameAsset), fit: BoxFit.cover
        ),
      ),
    );
  }
}







class MyHomeImageRow extends StatelessWidget {
  final List<Widget> children;
  final MainAxisAlignment mainAxisAlignment;
  MyHomeImageRow({@required this.children, @required this.mainAxisAlignment});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: children,
    );
  }
}

class MyImageNameContainer extends StatelessWidget {

  final phnWidth;
  final Widget child;
  final EdgeInsets margin;
  MyImageNameContainer({@required this.phnWidth, @required this.child, this.margin});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin!=null ? margin : EdgeInsets.only(bottom: 5.0),
      width: phnWidth,
      child: child,
    );
  }
}


class MyText extends StatelessWidget{
  @required final text;
  final double fontSize;
  final fontWeight;
  final color;
  final texAlign;
  final double letterSpacing;
  final double textScaleFactor;
  final bool softWrap;

  MyText({this.text,this.fontSize, this.fontWeight, this.color, this.texAlign, this.letterSpacing, this.textScaleFactor, this.softWrap});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(fontSize: fontSize, fontWeight: fontWeight, color: color, letterSpacing: letterSpacing,),textAlign: texAlign,textScaleFactor: textScaleFactor, softWrap: softWrap,);
  }
}

class MyText2 extends StatelessWidget{
  @required final text;

  MyText2({this.text});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(fontSize: 14.5, fontWeight: FontWeight.w600,), textAlign: TextAlign.center,);
  }
}

class MyOnePackOfHome extends StatelessWidget {
  final String heading;
  final phnWidth;
  final String imageAssetName1;
  final String imageAssetName2;
  final String imageAssetName3;
  final String imageName1;
  final String imageName2;
  final String imageName3;
  final Widget nextPage1;
  final Widget nextPage2;
  final Widget nextPage3;
  MyOnePackOfHome({
    @required this.heading,
    @required this.phnWidth,
    @required this.imageAssetName1,
    @required this.imageAssetName2,
    @required this.imageAssetName3,
    @required this.imageName1,
    @required this.imageName2,
    @required this.imageName3,
    @required this.nextPage1,
    @required this.nextPage2,
    @required this.nextPage3,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 16.0, bottom: 16.0),
          child: MyText(
            text: heading,
            fontSize: 18.0,
            fontWeight: FontWeight.w600,
            letterSpacing: 0.4,
          ),
        ),
        MyHomeImageRow(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MyHomeImageMaterial(phnWidth: phnWidth, imageNameAsset: imageAssetName1, onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> nextPage1)),),
            MyHomeImageMaterial(phnWidth: phnWidth, imageNameAsset: imageAssetName2, onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> nextPage2)),),
            MyHomeImageMaterial(phnWidth: phnWidth, imageNameAsset: imageAssetName3, onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> nextPage3)),),
          ],),
        SizedBox(
          height: 10,
        ),
        MyHomeImageRow(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MyImageNameContainer(phnWidth: phnWidth, child: MyText(text: imageName1,  fontSize: 15.5,texAlign: TextAlign.center,)),
              MyImageNameContainer(phnWidth: phnWidth, child: MyText(text: imageName2,  fontSize: 15.5,texAlign: TextAlign.center,)),
              MyImageNameContainer(phnWidth: phnWidth, child: MyText(text: imageName3,  fontSize: 15.5,texAlign: TextAlign.center,)),
            ]),
      ],
    );
  }
}



class MyOnePackOfSkinCareHome extends StatelessWidget {

  final phnWidth;
  final double height;
  final String imageAssetName1;
  final String imageAssetName2;
  final String imageName1;
  final String imageName2;
  final String networkImage1;
  final String networkImage2;
  final Widget nextPage1;
  final nextPage2;
  MyOnePackOfSkinCareHome({
    @required this.phnWidth,
    this.height,
    this.imageAssetName1,
    this.imageAssetName2,
    this.networkImage1,
    this.networkImage2,
    @required this.imageName1,
    @required this.imageName2,
    @required this.nextPage1,
    @required this.nextPage2,
  });

  @override
  Widget build(BuildContext context) {
    print("something wrong");
    return Column(
      children: <Widget>[
        MyHomeImageRow(
          children: [
            MyHomeImageMaterial(margin: EdgeInsets.only(top: 20.0), height: height!=null? height: 128, phnWidth:phnWidth, imageNameAsset: imageAssetName1, imageName: imageName1, networkImage: networkImage1, onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> nextPage1)),),
            MyHomeImageMaterial(margin: EdgeInsets.only(top: 20.0), height: height!=null? height: 128, phnWidth:phnWidth, imageNameAsset: imageAssetName2, imageName: imageName2, networkImage: networkImage2, onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> nextPage2)),),
          ],
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        ),
        SizedBox(
          height: 10,
        ),
        MyHomeImageRow(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MyImageNameContainer(margin: EdgeInsets.only(bottom: 2), phnWidth: phnWidth, child: MyText2(text: imageName1)),
              MyImageNameContainer(margin: EdgeInsets.only(bottom: 2), phnWidth: phnWidth, child: MyText2(text: imageName2,)),
            ]),

      ],
    );
  }
}

class ReusableSilverAppBar extends StatefulWidget {
  final String imageName;
  final String networkImage;
  final SliverChildDelegate sliverChildDelegate;
  ReusableSilverAppBar({@required this.imageName, @required this.networkImage, @required this.sliverChildDelegate});

  @override
  _ReusableSilverAppBarState createState() => _ReusableSilverAppBarState();
}

class _ReusableSilverAppBarState extends State<ReusableSilverAppBar> {
  ScrollController _scrollController = ScrollController();

  bool lastStatus = true;

  bool get isShrink {
    return _scrollController.hasClients &&
        _scrollController.offset > (200 - kToolbarHeight);
  }

  _scrollListener() {
    if (isShrink != lastStatus) {
      setState(() {
        lastStatus = isShrink;
      });
    }
  }

  @override
  void initState() {
//    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: _scrollController,
      slivers: <Widget>[
        SliverAppBar(
          title: MyText(text: widget.imageName,textScaleFactor: 0.86, color: isShrink ? Colors.black : Colors.white,),
          backgroundColor: isShrink ? Colors.white : Colors.grey.withOpacity(0.3),
//            brightness: Brightness.dark,
//textTheme: TextTheme(subtitle1: TextStyle(color: Colors.black)),
//          automaticallyImplyLeading: false,
          leading: GestureDetector(
            child: Icon(
              Icons.arrow_back,
              color: isShrink ? Colors.black : Colors.white,
            ),
            onTap: () => Navigator.pop(context),
          ),
          expandedHeight: 220.0,
          elevation: 20.0,
//          floating: true,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
//            centerTitle: true,
//            title: MyText(text: imageName,color: Colors.blueGrey, textScaleFactor: 1.0),
            background: Hero(
              tag: widget.imageName,
              child: Container(
                child: CachedNetworkImage(
                  fit: BoxFit.cover,
                  imageUrl: widget.networkImage,
                  placeholder: (context, url) => CircularProgressIndicator(),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                ),
              ),
            ),
          ),
        ),
        SliverList(
          delegate: widget.sliverChildDelegate,
//          delegate: SliverChildListDelegate([]),
        ),
      ],
    );
  }
}




