import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:time_to_fit/style/style.dart';
import 'package:time_to_fit/ui/elements/tooltip.dart';
import 'package:time_to_fit/ui/screens/timer_settings/timer_settings_screen.dart';

enum FloatingButtonType { timer, journal }

class FloatingButton extends StatelessWidget {
  final FloatingButtonType type;

  FloatingButton({Key key, @required this.type})
      : assert(type != null, "Type can't be null"),
        super(key: key);

  FloatingButton.timer({Key key})
      : type = FloatingButtonType.timer,
        super(key: key);

  FloatingButton.journal({Key key})
      : type = FloatingButtonType.journal,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    //TODO: read all translated strings from local json later
    String text;
    if (type == FloatingButtonType.timer) {
      text = "Tap to add new timer";
    } else if (type == FloatingButtonType.journal) {
      text = "Tap to add new exercise";
    }

    return CustomTooltip(
      message: text,
      child: FloatingActionButton(
        child: Icon(Icons.add_circle_outline),
        backgroundColor: C.floatingButton,
        foregroundColor: C.floatingIcon,
        onPressed: _navigate(context),
      ),
    );
  }

  Function _navigate(BuildContext context) {
    Widget w;
    switch (type) {
      case FloatingButtonType.timer:
        w = TimerSettingsScreen();
        break;
      case FloatingButtonType.journal:
        w = null;
    }

    return () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => w));
    };
  }
}
