import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:time_to_fit/style/style.dart';
import 'package:time_to_fit/ui/elements/tooltip.dart';
import 'package:time_to_fit/ui/screens/home/home_screen.dart';

enum AppBarType { home, timer }

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final AppBarType type;

  CustomAppBar({Key key, @required this.type})
      : assert(type != null, "Type can't be null"),
        super(key: key);

  CustomAppBar.home({Key key})
      : type = AppBarType.home,
        super(key: key);

  CustomAppBar.timer({
    Key key,
  })  : type = AppBarType.timer,
        super(key: key);

  @override
  Widget build(BuildContext context) =>
      type == AppBarType.home ? _home() : _timer(context);

  Widget _home() => AppBar(
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

  Widget _timer(BuildContext context) => AppBar(
      elevation: 0.0,
      centerTitle: true,
      leading: CustomTooltip(
          message: 'Back',
          child: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () => Navigator.of(context).pop(),
          )),
      title: SafeArea(
        child: Text('Timer'),
      ),
      actions: <Widget>[
        CustomTooltip(
          message: 'Home',
          child: IconButton(
              icon: Icon(
                Icons.home,
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              }),
        ),
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
