import 'package:flutter/material.dart';
import 'package:time_to_fit/ui/elements/app_bar.dart';
import 'package:time_to_fit/ui/elements/buttons.dart';

class TimerMenuLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: CustomAppBar.timer(),
      body: ListView(
        children: <Widget>[
          Button.timerButton('test1'),
          Button.timerButton('test2')
        ],
      )
  );
}