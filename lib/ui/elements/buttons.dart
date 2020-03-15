import 'package:time_to_fit/style/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:time_to_fit/ui/screens/timer_menu/timer_menu_screen.dart';

enum ButtonType { timerMenu, journalMenu }

class Button extends StatelessWidget {
  final ButtonType type;
  final String asset;

  Button({Key key, @required this.type, @required this.asset})
      : assert(type != null, "Type can't be null"),
        assert(asset != null, "Asset can't be null"),
        super(key: key);

  Button.timerMenu({Key key})
      : type = ButtonType.timerMenu,
        asset = "assets/images/stopwatch.png",
        super(key: key);

  Button.journalMenu({Key key})
      : type = ButtonType.journalMenu,
        asset = "assets/images/stopwatch.png",
        super(key: key);

  @override
  Widget build(BuildContext context) {
    //TODO: read all translated strings from local json later
    String text;
    if (type == ButtonType.timerMenu) {
      text = "Timer";
    } else if (type == ButtonType.journalMenu) {
      text = "Training journal";
    }

    return GestureDetector(
        onTap: _navigate(context),
        child: Column(
          children: <Widget>[
            Image.asset(asset),
            Container(
                margin: T.homeTextMargin, child: Text(text, style: T.homeText)),
          ],
        ));
  }

  Function _navigate(BuildContext context) {
    Widget w;
    switch (type) {
      case ButtonType.timerMenu:
        w = TimerMenuScreen();
        break;
      case ButtonType.journalMenu:
        w = null;
    }

    return () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => w));
    };
  }
}
