import 'package:time_to_fit/data/PODO/timer.dart';
import 'package:time_to_fit/data/db.dart';
import 'package:time_to_fit/data/repository/repo.dart';

class TimerRepository extends Repository {
  static final Repository _repository = TimerRepository._();
  static final String table = "timer";

  TimerRepository._();

  static Repository get repository => _repository;

  @override
  create(Object obj) async {
    final db = await DB.db.database;
    var result = await db.insert(table, (obj as Timer).toJson());
    return result;
  }

  @override
  delete(String name) async {
    final db = await DB.db.database;
    db.delete(table, where: "name = ?", whereArgs: [name]);
  }

  @override
  read(String name) async {
    final db = await DB.db.database;
    var res = await db.query(table, where: "name = ?", whereArgs: [name]);
    return res.isNotEmpty ? Timer.fromJson(res.first) : Null;
  }

  @override
  readAll() async {
    final db = await DB.db.database;
    var res = await db.query(table);
    List<Timer> list =
        res.isNotEmpty ? res.map((c) => Timer.fromJson(c)).toList() : [];
    return list;
  }

  @override
  update(Object obj) async {
    final db = await DB.db.database;
    var res = await db.update(table, (obj as Timer).toJson(),
        where: "name = ?", whereArgs: [(obj as Timer).name]);
    return res;
  }
}
