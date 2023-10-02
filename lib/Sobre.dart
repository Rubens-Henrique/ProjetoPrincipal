import 'package:flutter/material.dart';

class Sobre extends StatelessWidget {
  final String texto;

  Sobre(this.texto);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sobre nós"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "UAI, GÔ",
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'PermanentMarker-Regular'),
            ),
            Text(
              "\nNossa missão:",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Text(
              "\nLevar o turismo de uma maneira divertida!",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              "\n\nPara mais informações acesse nosso site: \nuaigo.com.br"
              "\nOu clique no botão abaixo para obter nossos contatos",
              style: TextStyle(fontSize: 20),
            ),
            Image.asset("assets/images/Logo.png",
                width: 350, height: 300, fit: BoxFit.cover),
            ElevatedButton(
                child: Text('AJUDA'),
                onPressed: () => print("Telefone de contato : 31 92382 47232 "
                    " suporteuaigo@gmail.com")),
          ],
        ),
      ),
    );
  }
}
