import 'package:time_to_fit/ui/elements/app_bar.dart';
import 'package:time_to_fit/ui/elements/buttons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../timer_menu/timer_menu_screen.dart';

class HomePhoneLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: CustomAppBar.home(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Button(
              navigate: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TimerMenuScreen()));
              },
              text: 'Timer',
              asset: 'assets/images/stopwatch.png',
            ),
            Button(
              navigate: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            TimerMenuScreen())); //TrainingJournalScreen()
              },
              text: 'Training journal',
              asset: 'assets/images/stopwatch.png',
            ),
          ], //Button.journalMenu()
        ),
      ));
}
