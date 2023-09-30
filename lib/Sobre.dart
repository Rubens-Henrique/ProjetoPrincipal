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
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Text("Nossa missão"),
            Text(
                "Para mais informações acesse nosso site minasuai.com.br\nOu clique no botão abaixo para obter nossos contatos"),
            Image.asset("assets/images/Logoapp.png",
                width: 350, height: 300, fit: BoxFit.cover),
            ElevatedButton(
                child: Text('AJUDA'),
                onPressed: () => print("Telefone de contato : 31 92382 47232 "
                    " suporteuaiminas@gmail.com")),
          ],
        ),
      ),
    );
  }
}
