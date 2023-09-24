import 'package:flutter/material.dart';

  class Sobre extends StatelessWidget {
  final String texto;

  Sobre(this.texto);

  @override
       Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(title: Text("Sobre nós"),
          ),
          body: Center(

            child:

            Column (mainAxisAlignment: MainAxisAlignment.center,

            children: [

              Text( "O aplicativo MinasUAI é um aplicativo que visa ajudar as viajantes a encontrarem não só os "
                "destinos mais atrativos para se divertir, como também buscar restaurantes,hospedagem e muito mais.Tudo isso em um só aplicativo "),
               Text( "  Para mais informações acesse nosso site minasuai.com.br ou então clique no botão ajudar para obter nossos contatos "),
              Image.asset("assets/images/dx.png",
                width:350,
                height:350,
                fit:BoxFit.cover),

            ElevatedButton (
             child : Text('AJUDA'),
              onPressed:() =>
                print("Telefone de contato : 31 92382 47232 "
                    " suporteuaiminas@gmail.com")
                ),
            ],
          ),
  ),
  );
  }
  }