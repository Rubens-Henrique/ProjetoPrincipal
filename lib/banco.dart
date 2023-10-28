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
    nome TEXT
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
  '''INSERT INTO _conta (nome, id) VALUES (?,? )''',
  [id, DateTime.now().millisecondsSinceEpoch],

);

 }
  _salvarDados(String nome, int idade) async {
    Database bd = await _initDatabase();
    Map<String, dynamic> dadosUsuario = {
      "nome" : nome,
      "idade" : idade
    };
    int id = await bd.insert("usuarios", dadosUsuario);
    print("Salvo: $id " );
  }
     Future<void> updateUser(int id,int nome, int idade , String senha,) async {
    Database db = await _initDatabase();
    db.rawUpdate("UPDATE $_tableName SET name = '$nome', idade = '$idade' ,senha = '$senha' WHERE id = '$id'");
  }

 Future <void> delete (int id ) async { 

   final database = await _initDatabase();
   await database.rawDelete (''' DELETE FROM $tablename where id= ?''', [id] );
  
 }
 
}


 




}
