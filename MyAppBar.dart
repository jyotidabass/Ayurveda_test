import 'package:flutter/material.dart';

class MyAppBar extends AppBar{
  final title;
  final bool automaticallyImplyLeading;
//  final double titleSpacing;
  final List<Widget> actions;

  MyAppBar({
    Key key,
    @required this.title,
    this.automaticallyImplyLeading,
//    this.titleSpacing,
    this.actions
  }) : super(
    key: key,
    backgroundColor: Colors.white,
    automaticallyImplyLeading: automaticallyImplyLeading,
    title: title,
//    titleSpacing: titleSpacing,
    actions: actions,
  );
}





//class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
//  final title;
//  final bool automaticallyImplyLeading;
//  final double titleSpacing;
//  final List<Widget> actions;
//
//  const MyAppBar({@required this.title, this.automaticallyImplyLeading, this.titleSpacing, this.actions});
//
//  @override
//  Widget build(BuildContext context) {
//    return new Container(
//      color: Colors.amber,
//      height: preferredSize.height,
//      child: new Center(
//        child: new Text(title),
//      ),
//    );
//  }
//
//  @override
//  Size get preferredSize => const Size.fromHeight(40.0);
//}