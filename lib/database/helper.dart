import 'dart:async';
import 'dart:io';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';

class DatabaseHelper {
  static const _databaseName = "studioz.db";
  static const _databaseVersion = 1;

  // Membuat singleton instance untuk kelas DatabaseHelper
  DatabaseHelper._privateConstructor();
  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();

  // Referensi database SQLite
  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await _initDatabase();
    return _database!;
  }

  // Inisialisasi database
  _initDatabase() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, _databaseName);
    return await openDatabase(path,
        version: _databaseVersion, onCreate: _onCreate);
  }

  // Membuat tabel dan skema awal database jika belum ada
  Future<void> _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE order (
        id INTEGER PRIMARY KEY,
        nama_studio TEXT,
        harga INTEGER,
        tgl_order DATE,
        lokasi TEXT,
        tipe TEXT,
        waktu TEXT,
        metopem TEXT,
        ...
      )
      ''');
    // Membuat lebih banyak tabel jika diperlukan
  }

  // Metode untuk menutup koneksi database saat aplikasi ditutup
  Future<void> close() async {
    var db = await instance.database;
    db.close();
  }
}
