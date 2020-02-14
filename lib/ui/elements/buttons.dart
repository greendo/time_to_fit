import 'package:time_to_fit/style/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class Button extends StatelessWidget {
  const Button({Key key}) : super(key: key);

  factory Button.timer() => _Timer();

  factory Button.calendar() => _Calendar();
}

class _Timer extends Button {
  @override
  Widget build(BuildContext context) => Column(
        children: <Widget>[
          Image.asset('assets/images/stopwatch.png'),
          Container(margin: T.margin, child: Text('Timer', style: T.homeText)),
        ],
      );
}

class _Calendar extends Button {
  @override
  Widget build(BuildContext context) => Column(
        children: <Widget>[
          Image.asset('assets/images/agendas.png'),
          Container(
            margin: T.margin,
            child: Text('Training journal', style: T.homeText),
          )
        ],
      );
}
