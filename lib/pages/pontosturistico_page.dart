import 'package:example/Controllers/pontoturistico_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class PontosturisticosPage extends StatelessWidget {
  PontosturisticosPage({Key key}) : super(key: key);

  filtro() {
    return SimpleDialog(
      title: Text('Filtrar por Proximidade'),
      children: [
        Obx(
          () => Slider(
            value: PontoTuristicoController.to.raio.value,
            min: 0,
            max: 10,
            divisions: 10000,
            label: PontoTuristicoController.to.distancia,
            onChanged: (value) => PontoTuristicoController.to.raio.value = value,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 24, top: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                onPressed: () => PontoTuristicoController.find.to.filtrarCafes(),
                child: Text('Filtrar'),
              ),
              TextButton(onPressed: () => Get.back(), child: Text('Cancelar')),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(PontosturisticosPage());

    return Scaffold(
      appBar: AppBar(
        title: Text('Pontos turísticos'),
        actions: [
          IconButton(
            icon: Icon(Icons.filter_list),
            onPressed: () {
              showDialog(context: context, builder: (context) => filtro());
            },
          ),
        ],
      ),
      body: GetBuilder<PontoTuristicoController>(
        init: controller,
        builder: (value) => GoogleMap(
          mapType: MapType.normal,
          zoomControlsEnabled: true,
          initialCameraPosition: CameraPosition(
            target: controller.position,
            zoom: 13,
          ),
          onMapCreated: controller.onMapCreated,
          myLocationEnabled: true,
          markers: controller.markers,
        ),
      ),
    );
  }