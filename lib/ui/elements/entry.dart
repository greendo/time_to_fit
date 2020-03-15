import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:time_to_fit/style/style.dart';

//it will stay like this for a while
class TimerEntry extends StatelessWidget {
  final String name;

  const TimerEntry({Key key, @required this.name})
      : assert(name != null, "Non-null string name should be provided"),
        super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        height: H.timerButtonSettings,
        margin: T.timerTextMargin,
        padding: T.timerTextPadding,
        color: C.timerButton,
        child: Row(
          children: <Widget>[
            Expanded(
              child: GestureDetector(
                child: Text(name, style: T.timerTextStyle),
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => null));
                },
              ),
            ),
            GestureDetector(
              child: Container(
                height: H.timerButtonSettings,
                width: W.timerButtonSettings,
                color: C.timerButtonSettings,
                child: Icon(Icons.settings),
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => null));
              },
            )
          ],
        ),
      );
}
