import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DB {
  static final DB db = DB._();
  static Database _database;

  DB._();

  Future<Database> get database async {
    if (_database != null) return _database;

    _database = await initDB();
    return _database;
  }

  initDB() async {
    var path = await getDatabasesPath();
    path = join(path, "time_to_fit.db");
    return await openDatabase(
      path,
      onCreate: (db, version) {
        return db.execute(
            "CREATE TABLE timer(name TEXT PRIMARY KEY, count INTEGER, work INTEGER, rest INTEGER, startSignal TEXT, endSignal TEXT)");
      },
      version: 1,
    );
  }
}
