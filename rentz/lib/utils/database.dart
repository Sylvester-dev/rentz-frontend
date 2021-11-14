import 'package:sqflite/sqflite.dart' as sql;
import 'package:path/path.dart' as path;
import 'package:sqflite/sqflite.dart';

class SqlDb {
  Future<sql.Database> database() async {
    final dbpath = await sql.getDatabasesPath();
    return sql.openDatabase(path.join(dbpath, 'rentz.db'),
        onCreate: (sql.Database db, int version) async {
      db.execute(
          'CREATE TABLE favorite (id TEXT PRIMARY KEY)');
    });
  }
   
   Future<void> insert_row(String table,Map<String,Object> data) async {
     final db = await database();
     db.insert(table,data);
   }

   Future<void> delete_row(String Id) async {
     final db = await database();
     db.rawDelete('DELETE FROM favorite WHERE id = ${Id}');
   }

   Future<bool> isfavorite(String Id) async {
     final db = await database();
     var result = await db.rawQuery('SELECT EXIST(SELECT 1 FROM favorite WHERE id=$Id)');
     int flag = Sqflite.firstIntValue(result);
     if(flag==1)
     return true;
     else 
     return false;
   }
}

// string - id
// insertion and deletion 
// query searching