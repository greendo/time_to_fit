import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:time_to_fit/style/style.dart';
import 'package:time_to_fit/ui/elements/tooltip.dart';

abstract class CustomFloatingButton extends StatelessWidget {
  const CustomFloatingButton({Key key}) : super(key: key);

  factory CustomFloatingButton.timer() => _Timer();
}

class _Timer extends CustomFloatingButton {
  @override
  Widget build(BuildContext context) => CustomTooltip(
        message: 'Tap to add new timer',
        child: FloatingActionButton(
          child: Icon(Icons.add_circle_outline),
          backgroundColor: C.floatingButton,
          foregroundColor: C.floatingIcon,
          onPressed: () {},
        ),
      );
}
