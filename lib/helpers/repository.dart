import 'package:sqflite/sqlite_api.dart';
import 'package:todoapp_sqf/helpers/databse.dart';

class Repository {
  late DatabaseConnection _databaseConnection;

  Repository(){
    _databaseConnection = DatabaseConnection();
  }

  static late Database _database;

  Future<Database> get database async {
     if(_database != null) return _database;
     _database = await _databaseConnection.setDatabase();
     return _database;
  }

  insert(table, data) async {
      var connection = await database;
      return connection.insert(table, data);
  }
}