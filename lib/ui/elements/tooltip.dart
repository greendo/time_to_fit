import 'package:flutter/material.dart';
import 'package:time_to_fit/style/style.dart';

class CustomTooltip extends StatelessWidget {
  final String message;
  final Widget child;

  const CustomTooltip({Key key, @required this.message, @required this.child})
      : assert(message != null, "String message must not be null"),
        assert(child != null, "Widget child must not be null"),
        super(key: key);

  @override
  Widget build(BuildContext context) => Tooltip(
        message: message,
        textStyle: TextStyle(color: C.tooltipColor),
        decoration: _TooltipDecoration(),
        child: child,
      );
}

class _TooltipDecoration extends BoxDecoration {
  @override
  Color get color => C.tooltipBackground;

  @override
  BorderRadiusGeometry get borderRadius => B.tooltip;
}
