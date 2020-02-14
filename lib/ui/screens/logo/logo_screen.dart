import 'package:flutter/material.dart';
import 'package:time_to_fit/ui/screens/home/home_screen.dart';
import 'package:time_to_fit/ui/screens/logo/phone_layout.dart';
import 'package:flutter/cupertino.dart';

class LogoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomeScreen()));
    });

    return LogoPhoneLayout();
  }
}
