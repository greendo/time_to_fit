import 'package:time_to_fit/style/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:time_to_fit/ui/screens/timer_menu/timer_menu_screen.dart';

class Button extends StatelessWidget {
  final String asset;
  final String text;
  final Function navigate;
  Button({@required this.asset, @required this.text, @required this.navigate});
  @override
  Widget build(BuildContext context) {
    //TODO: read all translated strings from local json later
    return GestureDetector(
        onTap: navigate,
        child: Column(
          children: <Widget>[
            Image.asset(asset),
            Container(
                margin: T.homeTextMargin, child: Text(text, style: T.homeText)),
          ],
        ));
  }
}
