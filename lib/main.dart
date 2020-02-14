import 'package:time_to_fit/ui/screens/logo/logo_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      darkTheme: ThemeData.dark(),
      home: LogoScreen(),
    );
  }
}
