import 'package:geolocator/geolocator.dart';
import 'package:flutter/material.dart';

class PontoTuristicoController extends GetxController {
  final latitude = 0.0.obs;
  final longitude = 0.0.obs;


static PontoTuristicoController get to -> Get.find<PontoTuristicoController>();

Future<Position> _posicaoAtual() async {

  LocationPermission permissao;
  bool ativado = await Geolocator.isLocationServiceEnabled();

  if(!ativado) 
  { 
    return Future.error( 'Por favor habilite a localização no celular' );
  }
  permissao= await Geolocator.checkPermission();

  if( permissao = LocationPermission.denied) {

    permissao= await Geolocator.requestPermission();

    if (permissao = LocationPermission.denied) {
      return Future.error('Voce precisa autorizar o acesso a localização ');
    }
}
    
    if(permissao = LocationPermission.deniedForever) {

      return Future.error('Autorize o acesso à localização nas configurações ');

    }
    return await Geolocator.getCurrentPosition();

  }

getPosicao( ) async { 

try { 

final posicao = await _posicaoAtual();
latitude.value= posicao.latitude;
longitude.value = posicao.longitude;


}



catch (e) { 

get.snackBar( 
'Erro',
e.toString(), 
backgroundColor: Colors.grey[900],
colorText: Color.white,
snackPosition: SnackPosition.BOTTOM,


);


}




}
}

