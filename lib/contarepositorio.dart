//PARA CRIAR A TELA DO BANCO DE DADOS, E NAO AS CONFIGURAÇOES


 import 'package:flutter/material.dart';

@override
  Widget build(BuildContext context) {
    TextEditingController _controllernome = TextEditingController();
    TextEditingController _controlleridade = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text("Banco de dados"),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        width: double.infinity,
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                labelText: "Digite o nome: ",
              ),
              controller: _controllernome,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: "Digite a idade: ",
              ),
              controller: _controlleridade,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: "Digite o CEP: ",
              ),
              controller: _controlleridade,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: "Digite a senha : ",
              ),
              
              controller: _controlleridade,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: "Digite a rua : ",
              ),
              controller: _controlleridade,
            ),
            SizedBox(height: 20,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                    child: Text("Salvar um usuário"),
                    onPressed: (){
                      _salvarDados(_controllernome.text, int.parse(_controlleridade.text));
                    }
                ),
                ElevatedButton(
                    child: Text("Listar todos usuários"),
                    onPressed: (){
                      _listarUsuarios();
                    }
                ),
                ElevatedButton(
                    child: Text("Listar um usuário"),
                    onPressed: (){
                      _listarUmUsuario(2);
                    }
                ),
                ElevatedButton(
                    child: Text("Atualizar um usuário"),
                    onPressed: (){
                      _atualizarUsuario(2);
                    }
                ),
                ElevatedButton(
                    child: Text("Excluir usuário"),
                    onPressed: (){
                      _excluirUsuario();
                    }
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


