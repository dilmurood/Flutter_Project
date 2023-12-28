import 'package:flutter_project/JSON/users.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  final databaseName = 'database.db';

  String user = '''CREATE table users (
    userId INTEGER PRIMARY KEY AUTOINCREMENT,
    fullName Text,
    email Text,
    username TEXT UNIQUE,
    password TEXT,
    phone Text
  )''';

  Future<Database> initDb() async {
    final databasePath = await getDatabasesPath();
    final path = join(databasePath, databaseName);

    return openDatabase(path, version: 1, onCreate: (db, version) async {
      await db.query(user);
    });
  }

  //log in authentication
  Future<bool> login(Users users) async {
    final Database db = await initDb();
    var result = await db.query(
        "select * from users where username = '${users.username}' and password = '${users.password}' ");
    return result.isNotEmpty ? true : false;
  }

  //sign up
  Future<int> createtUser(Users users) async {
    final Database db = await initDb();
    return db.insert('users', users.toMap());
  }

  // Future<Users?> getUser(String userName) async {
  //   final Database db = await initDb();
  //   var result = await db.query("users", where: "username =");
  // }
}
