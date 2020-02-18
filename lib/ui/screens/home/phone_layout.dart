import 'package:time_to_fit/ui/elements/app_bar.dart';
import 'package:time_to_fit/ui/elements/buttons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePhoneLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: CustomAppBar.home(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[Button.timerMenu(), Button.journalMenu()],
        ),
      ));
}
