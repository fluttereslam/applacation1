import 'dart:io';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
class databasehelp{
  static final _databaseName= "MyDatabase.db";
  static final _databaseVersion= 1;
  static final table= "My_table";
  static final columnId= "_id";
  static final columnName= "name";
  static final columnPrice= "price";
  databasehelp._privateConstructor();
  static final databasehelp instance = databasehelp._privateConstructor();


  static  Database? _database;

  Future<Database> get database async{
    print("created");
    
    if(_database!=null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }



  _initDatabase()async{
    Directory documentdirectory = await getApplicationDocumentsDirectory();
    String path = join(documentdirectory.path,_databaseName);
    return  await openDatabase(path,
        version:_databaseVersion,
    onCreate: _onCreate);
  }




  Future _onCreate(Database db,int version) async{
    await db.execute('''CREATE TABLE $table(
    $columnId INTEGER PRIMARY KEY,
    $columnName TEXT NOT NULL,
    $columnPrice  INTEGER NOT NULL)''');
  }



  Future<int> insert(Map<String,dynamic>row)async{
    Database db = await  instance.database;
    return await db.insert(table, row);
  }




  Future<List<Map<String,dynamic>>> queryAllRows()async{
    Database db = await instance.database;
    return await db.query(table);
  }


  Future<int> update(Map<String,dynamic>row)async{
    Database db = await instance.database;
    int id = row[columnId];
    return await db.update(table,row,where: '$columnId=?',whereArgs:[id]);

  }

  Future<int> delete(int id)async{
    Database db = await instance.database;
    return await db.delete(table,where: '$columnId=?',whereArgs: [id]);
  }


  Future<int?> queryRowCount()async {
    Database db = await instance.database;
    return Sqflite.firstIntValue(
        await db.rawQuery('SELECT COUNT(*) FROM $table'));
  }
    //firstIntValue(await db.rawQuery('SELECT COUNT(*) FROM $table'));




















}