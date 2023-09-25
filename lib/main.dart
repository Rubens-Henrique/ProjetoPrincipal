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
    LoginScreen(), // Agora inclui a tela LoginScreen diretamente aqui
    Sobre("O aplicativo MinasUAI é um aplicativo que visa ajudar as viajantes a encontrarem não só os "
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
        title: Text("Minas UAI"),
      ),
      body: _telas[_indiceAtual],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _indiceAtual,
        unselectedItemColor: Colors.red,
        selectedItemColor: Colors.black,
        onTap: onTabTapped,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Início",backgroundColor: Colors.black),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Perfil",backgroundColor: Colors.black),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: "Sobre",backgroundColor: Colors.black),
          BottomNavigationBarItem(icon: Icon(Icons.map), label: "Mapa", backgroundColor: Colors.black),
        ],
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
        title: Text('Minas UAI'),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          _image(),
          Center(
            child: Text(
              'Bem-vindo ao Minas UAI',
              style: TextStyle(
                fontSize: 150,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
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
      "assets/images/paisagen.jpg",
      fit: BoxFit.cover,
    );
  }
}
