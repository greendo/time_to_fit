import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:time_to_fit/style/style.dart';

class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Center(
          child: CircularProgressIndicator(
        valueColor: new AlwaysStoppedAnimation<Color>(C.progress),
        backgroundColor: C.progressBack,
      ));
}
