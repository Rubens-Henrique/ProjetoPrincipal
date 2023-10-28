import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';
import 'package:path/path.dart';

class BANCODADOS {
//construtor privado
  BANCODADOS._();
  static final BANCODADOS instance = BANCODADOS._();
//instanciando sqlite
  static Database? _database;

  get database async {
    if (_database != null) return database;

    return await _initDatabase();
  }

  _initDatabase() async {
    return await openDatabase(
      join(await getDatabasesPath(), 'bancco.db'),
      version: 1,
      onCreate: _onCreate,
      singleInstance: :true,
    );
  }

  _onCreate(BANCODADOS, versao) async {
    await BANCODADOS.execute(_conta);
    await BANCODADOS.execute(_endereco);
    await BANCODADOS.insert('nome', 'senha');
  }

  String get _conta => ''' 
  CREATE TABLE  conta(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nomee TEXT
    senha TEXT
    idade REAL 
  );
  ''';

  String get _endereco => ''' 
 
 CREATE TABLE endereco( 
   CEP TEXT
  estado TEXT
  cidade TEXT
  rua TEXT
  numero REAL



);  ''';

 Future <int> create ({required String id }) async {

final BANCODADOS=await database().database;
return await database.rawInsert (
  '''INSERT INTO _conta (nomee, id) VALUES (?,? )''',
  [id, DateTime.now().millisecondsSinceEpoch],

);

 }



}

 Future <void> delete (int id ) async { 

   final database = await database().database;
   await database.rawDelete (''' DELETE FROM $tablename where id= ?''', [id] );
  
 }
 




}
