import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LogoPhoneLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: _background(),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Image.asset('assets/images/logo.png'),
        ),
      );
}

AssetImage _background() => AssetImage('assets/images/background.png');
