import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

class DatabaseConnection {
  setDatabase() async {
    var directory = await getApplicationDocumentsDirectory();
    var path = join(directory.path, 'todolist_db');
    var databsae =
        await openDatabase(path, version: 1, onCreate: _onCreatingDatabse);
    return databsae;
  }

  _onCreatingDatabse(Database database, int version) async {
    await database.execute('''
      CREATE TABLE categories(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT,
        description TEXT
      )
    ''');
  }
}
