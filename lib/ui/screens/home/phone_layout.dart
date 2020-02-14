import 'package:time_to_fit/ui/elements/buttons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePhoneLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: SafeArea(
          child: Text('Home screen'),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.more_vert,
              ),
              onPressed: () {}),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[Button.timer(), Button.calendar()],
        ),
      ));
}
