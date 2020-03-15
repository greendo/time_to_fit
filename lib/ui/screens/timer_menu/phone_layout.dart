import "package:flutter/material.dart";
import 'package:time_to_fit/data/PODO/timer.dart';
import "package:time_to_fit/data/repository/repo.dart";
import "package:time_to_fit/data/repository/timer_repo.dart";
import "package:time_to_fit/ui/elements/app_bar.dart";
import "package:time_to_fit/ui/elements/entry.dart";
import "package:time_to_fit/ui/elements/floating_button.dart";
import "package:time_to_fit/data/PODO/timer.dart" as PODO;
import "package:time_to_fit/ui/elements/loading.dart";

//class TimerMenuLayout extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) => Scaffold(
//        appBar: CustomAppBar.timer(),
//        body: ListView(children: _timers()),
//        floatingActionButton: CustomFloatingButton.timer(),
//      );
//}

class TimerMenuLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) => FutureBuilder<List>(
      future: _fromTest(),
      builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
        Widget w = snapshot.hasData
            ? ListView(children: _asWidgets(snapshot.data))
            : Loading();

        return Scaffold(
          appBar: CustomAppBar.timer(),
          body: w,
          floatingActionButton: FloatingButton.timer(),
        );
      });
}

_fromTest() => Future.delayed(const Duration(microseconds: 500),
    () => [Timer(name: "test1"), Timer(name: "test2")]);

_fromDB() {
  Repository r = TimerRepository.repository;
  return r.readAll();
}

_asWidgets(List<PODO.Timer> l) =>
    l.map((e) => TimerEntry(name: e.name)).toList();
