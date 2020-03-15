import 'package:flutter/material.dart';
import 'package:time_to_fit/ui/elements/app_bar.dart';
import 'package:time_to_fit/ui/elements/settings.dart' as Settings;

class TimerSettingsLayout extends StatelessWidget {
  final String title;

  const TimerSettingsLayout({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: CustomAppBar.timer(),
      body: Column(
        children: <Widget>[
          Settings.Title(title: title ?? 'title'),
        ],
      ));
}
