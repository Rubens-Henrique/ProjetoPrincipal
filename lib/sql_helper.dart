import 'package:flutter/foundation.dart';
import 'package:sqflite/sqflite.dart' as sql;

class SQLHelper {
  static Future<void> criaTabela(sql.Database database) async {
    await database.execute("""CREATE TABLE produtos(
        id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
        nome TEXT,
        email TEXT,
        senha TEXT
        createdAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
)
""");
  }

  static Future<sql.Database> db() async {
    return sql.openDatabase(
      'dados.db',
      version: 1,
      onCreate: (sql.Database database, int version) async {
        await criaTabela(database);
      },
    );
  }

  static Future<int> adicionarEmail(
      String nome, String email, String senha) async {
    final db = await SQLHelper.db();
    final dados = {'nome': nome, 'email': email, 'senha': senha};
    final id = await db.insert('dados', dados,
        conflictAlgorithm: sql.ConflictAlgorithm.replace);
    return id;
  }

  static Future<List<Map<String, dynamic>>> resgataDados() async {
    final db = await SQLHelper.db();
    return db.query('dados', orderBy: "id");
  }

  static Future<List<Map<String, dynamic>>> pegaUmDado(int id) async {
    final db = await SQLHelper.db();
    return db.query('dados', where: "id = ?", whereArgs: [id], limit: 1);
  }

  static Future<int> atualizaDados(
      int id, String nome, String email, String senha) async {
    final db = await SQLHelper.db();
    final dados = {
      'nome': nome,
      'email': email, //att zzarfaowrk wokrwork
      'senha': senha,
      'createdAt': DateTime.now().toString()
    };
    final result =
        await db.update('dados', dados, where: "id = ?", whereArgs: [id]);
    return result;
  }

  static Future<void> apagaDado(int id) async {
    final db = await SQLHelper.db();
    try {
      await db.delete("dados", where: "id = ?", whereArgs: [id]);
    } catch (err) {
      debugPrint("Erro ao apagar o item item: $err");
    }
  }
}
