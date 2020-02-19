import 'package:flutter/material.dart';

abstract class C {
  static const buttonPrimary = Color.fromRGBO(255, 140, 26, 0.6);
  static const buttonArrow = Color.fromRGBO(230, 115, 0, 1);

  static const appBar = Color.fromRGBO(206, 74, 65, 1);

  static const timerButtonSettings = Color.fromRGBO(153, 59, 52, 1);
  static const timerButton = Color.fromRGBO(206, 74, 65, 1);

  static const floatingButton = Color.fromRGBO(212, 77, 68, 1);
  static const floatingIcon = Color.fromRGBO(255, 255, 255, 1);

  static const tooltipColor = Color.fromRGBO(255, 255, 255, 0.65);
  static const tooltipBackground = Color.fromRGBO(14, 14, 17, 0.65);
}

abstract class T {
  static const homeText =
      TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0);
  static const homeTextMargin = EdgeInsets.all(9);

  static const timerTextMargin = EdgeInsets.only(top: 8);
  static const timerTextPadding = EdgeInsets.only(left: 15);
  static const timerTextStyle = TextStyle(fontSize: 18);
}

abstract class W {
  static const timerButtonSettings = 85.0;
}

abstract class H {
  static const timerButtonSettings = 72.0;
}

abstract class B {
  static const tooltip = BorderRadius.all(Radius.circular(5.0));
}