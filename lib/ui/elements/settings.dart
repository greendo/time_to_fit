import 'package:flutter/cupertino.dart';
import 'package:time_to_fit/style/style.dart';

class Title extends StatelessWidget {
  final String title;

  Title({Key key, @required this.title})
      : assert(title != null, "Title must not be null"),
        super(key: key);

  @override
  Widget build(BuildContext context) => Row(
        children: <Widget>[
          Expanded(
              child: Container(
            child: Text(title, style: T.settingsTextStyle),
            color: C.settingsName,
            height: H.timerSettings,
            margin: T.settingsTextMargin,
            padding: T.settingsTextPadding,
          ))
        ],
      );
}

class Field extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return null;
  }
}
