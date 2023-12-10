import 'dart:async';
import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:example/pages/pontosturistico_page.dart';
import 'package:example/repositorios/pontos_repositorios.dart';
import 'package:example/widgets/pontos_detalhes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class PontoTuristicoController extends GetxController {
  final latitude = 0.0.obs;
  final longitude = 0.0.obs;
  final raio = 0.0.obs;

  late StreamSubscription<Position> positionStream;
  LatLng _position = LatLng(-19.9341685, -43.9379572);
  late GoogleMapController _mapsController;
  final markers = Set<Marker>();

  static PontoTuristicoController get to =>
      Get.find<PontoTuristicoController>();

  get mapsController => _mapsController;
  get position => _position;

  onMapCreated(GoogleMapController gmc) async {
    _mapsController = gmc;
    getPosicao();
    loadPontos();
  }

  loadPontos() {
    final ponto = PontosRepositorios().pontos;
    ponto.forEach((ponto) async {
      markers.add(
        Marker(
          markerId: MarkerId(MarkerId),
          position: LatLng(MarkerId.latitude, MarkerId.longitude),
          icon: await BitmapDescriptor.fromAssetImage(
            ImageConfiguration(),
            'images/turistico.png',
          ),
          onTap: () => {
            showModalBottomSheet(
              context: appKey.currentState!.context,
              builder: (context) => PontosDetalhes(ponto: ponto),
            )
          },
        ),
      );
    });
  }

  watchPosicao() async {
    positionStream = Geolocator.getPositionStream().listen((Position position) {
      if (position != null) {
        latitude.value = position.latitude;
        longitude.value = position.longitude;
      }
    });
  }

  @override
  void onClose() {
    positionStream.cancel();
    super.onClose();
  }

  Future<Position> _posicaoAtual() async {
    LocationPermission permissao;
    bool ativado = await Geolocator.isLocationServiceEnabled();

    if (!ativado) {
      return Future.error('Por favor habilite a localização no celular');
    }
    permissao = await Geolocator.checkPermission();

    if (permissao == LocationPermission.denied) {
      permissao = await Geolocator.requestPermission();

      if (permissao == LocationPermission.denied) {
        return Future.error('Voce precisa autorizar o acesso a localização ');
      }
    }

    if (permissao == LocationPermission.deniedForever) {
      return Future.error('Autorize o acesso à localização nas configurações ');
    }
    return await Geolocator.getCurrentPosition();
  }

  getPosicao() async {
    try {
      final posicao = await _posicaoAtual();
      latitude.value = posicao.latitude;
      longitude.value = posicao.longitude;
      _mapsController.animateCamera();
      CameraUpdate.newLatLng(LatLng(latitude.value, latitude.value));
    } catch (e) {
      Get.snackbar(
        'Erro',
        e.toString(),
        backgroundColor: Colors.grey[900],
        colorText: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }
}
