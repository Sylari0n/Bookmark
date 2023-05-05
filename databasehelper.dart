import 'dart:io';

import 'package:bookmark/models.dart';
import 'package:bookmark/screens/booknotes.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

class DatabaseHelper {

  DatabaseHelper._privateConstructor();
  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();

  static Database? _database;
  Future<Database> get database async => _database ??= await _initDatabase();

  Future<Database> _initDatabase() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, 'bookmark.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
  }

  Future _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE notes(
        id Integer PRIMARY KEY AUTOINCREMENT,
        note Text(10000)
        imgUrl Text(100)
      )
    ''');
  }

  Future<List<Notes>> getNotes() async {
    Database db = await instance.database;
    var notes = await db.query('notes', orderBy: 'name');
    List<Notes> noteList = notes.isNotEmpty
    ? notes.map((c) => Notes.fromMap(c)).toList()
    : [];
    return noteList;

    // CRUD will be added
  }
  
}