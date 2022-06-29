import 'dart:async';
import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

import '../models/bilgiler.dart';

class DatabaseHelper {
  static final _databaseName = "kullaniciBilgi.db";
  static final _databaseVersion = 1;
  static final table = "kullaniciTablo";
  static final columnId = "id";
  static final columnTarih = "tarih";
  static final columnKilo = "kilo";
  static final columnBoy = "boy";
  DatabaseHelper._privateCostructor();

  static final DatabaseHelper instance = DatabaseHelper._privateCostructor();
  static Database? _database;

  Future<Database> get database async => _database ??= await _initDatabase();

  Future<Database> _initDatabase() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, table);
    return await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
  }

  Future _onCreate(Database db, int version) async {
    await db.execute('''
CREATE TABLE $table (
$columnId INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
$columnTarih TEXT,
$columnKilo INTEGER,
$columnBoy INTEGER)''');
  }

  Future<int> insert(Bilgi bilgi) async {
    Database db = await instance.database;
    print("veri eklendi");
    return await db.insert(table, {
      'tarih': bilgi.tarih,
      'boy': bilgi.boy,
      'kilo': bilgi.kilo,
    });
  }

  Future<int> update(Bilgi bilgi) async {
    Database db = await instance.database;
    int id = bilgi.toMap()["id"];
    return await db
        .update(table, bilgi.toMap(), where: "$columnId = ?", whereArgs: [id]);
  }

  Future<int> delete(int id) async {
    Database db = await instance.database;
    return await db.delete(table, where: "$columnId = ?", whereArgs: [id]);
  }

  Future<List<Map<String, dynamic>>> queryRows(tarih) async {
    Database db = await instance.database;
    return await db.query(table, where: "$columnTarih LIKE '%$tarih%'");
  }

  Future<List<Map<String, dynamic>>> queryAllRows() async {
    Database db = await instance.database;
    return await db.query(table);
  }

  Future<int?> queryRowCount() async {
    Database db = await instance.database;
    return Sqflite.firstIntValue(
        await db.rawQuery('SELECT COUNT(*) FROM $table'));
  }
}
