import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:time_to_fit/style/style.dart';

abstract class CustomAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomAppBar({Key key}) : super(key: key);

  factory CustomAppBar.home() => _Home();
}

class _Home extends CustomAppBar {
  @override
  Widget build(BuildContext context) => AppBar(
      elevation: 0.0,
      centerTitle: true,
      title: SafeArea(
        child: Text('Home'),
      ),
      actions: <Widget>[
        IconButton(
            icon: Icon(
              Icons.more_vert,
            ),
            onPressed: () {}),
      ],
      bottom: PreferredSize(
          child: Container(
            color: C.appBar,
            height: 1.0,
          ),
          preferredSize: preferredSize));

  @override
  final Size preferredSize = const Size.fromHeight(kToolbarHeight);
}

class _Timer extends CustomAppBar {
  @override
  Widget build(BuildContext context) => AppBar(
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: SafeArea(
          child: Text('Timer'),
        ),
      );

  @override
  final Size preferredSize = const Size.fromHeight(kToolbarHeight);
}
