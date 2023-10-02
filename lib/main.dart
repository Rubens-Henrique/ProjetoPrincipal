import 'package:flutter/material.dart';

import 'Mapa.dart';
import 'Perfil.dart';
import 'Sobre.dart';
import 'package:animated_login/animated_login.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Inicio(),
  ));
}

class Inicio extends StatefulWidget {
  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  int _indiceAtual = 0;
  final List<Widget> _telas = [
    Home("Início"),
    LoginScreen(),
    Sobre(
        "O aplicativo UAI, GÔ é um aplicativo que visa ajudar as viajantes a encontrarem não só os "
        "destinos mais atrativos para se divertir, como também buscar restaurantes,hospedagem e muito mais.Tudo isso em um só aplicativo"),
    Mapa()
  ];

  void onTabTapped(int index) {
    setState(() {
      _indiceAtual = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("UAI, GÔ"),
      ),
      body: _telas[_indiceAtual],
      drawer: Drawer(
        child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.home, color: Colors.black),
              title: Text('Início'),
              selected: _indiceAtual == 0,
              onTap: () {
                onTabTapped(0);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.person, color: Colors.black),
              title: Text('Registro / Login'),
              selected: _indiceAtual == 1,
              onTap: () {
                onTabTapped(1);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.info_rounded, color: Colors.black),
              title: Text('Sobre o App'),
              selected: _indiceAtual == 2,
              onTap: () {
                onTabTapped(2);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.map, color: Colors.black),
              title: Text('Mapa'),
              selected: _indiceAtual == 3,
              onTap: () {
                onTabTapped(3);
                Navigator.pop(context);
              },
            ),
          ], // children
        ),
      ),
    );
  }
}

class Home extends StatelessWidget {
  final String texto;

  Home(this.texto);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Home')),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          _image(),
          Align(
            alignment: Alignment.topCenter,
            child: Text(
              'Bem vindo ao UAI, GÔ',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              },
              child: Text('Clique aqui para continuar'),
            ),
          ),
        ],
      ),
    );
  }

  Widget _image() {
    return Image.asset(
      "assets/images/Logo.png",
    );
  }
}
