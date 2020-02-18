import 'package:time_to_fit/style/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:time_to_fit/ui/screens/timer_menu/timer_menu_screen.dart';

abstract class Button extends StatelessWidget {
  const Button({Key key}) : super(key: key);

  factory Button.timerMenu() => _TimerMenu();

  factory Button.journalMenu() => _JournalMenu();

  factory Button.timerButton(String name) => _Timer(name);
}

class _TimerMenu extends Button {
  @override
  Widget build(BuildContext context) => GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => TimerMenuScreen()));
      },
      child: Column(
        children: <Widget>[
          Image.asset('assets/images/stopwatch.png'),
          Container(
              margin: T.homeTextMargin,
              child: Text('Timer', style: T.homeText)),
        ],
      ));
}

class _JournalMenu extends Button {
  @override
  Widget build(BuildContext context) => GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => null));
      },
      child: Column(
        children: <Widget>[
          Image.asset('assets/images/agendas.png'),
          Container(
            margin: T.homeTextMargin,
            child: Text('Training journal', style: T.homeText),
          )
        ],
      ));
}

class _Timer extends Button {
  final String name;

  _Timer(this.name);

  @override
  Widget build(BuildContext context) => Container(
        height: H.timerButtonSettings,
        margin: T.timerTextMargin,
        padding: T.timerTextPadding,
        color: C.timerButton,
        child: Row(
//          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: GestureDetector(
                child: Text(name),
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
