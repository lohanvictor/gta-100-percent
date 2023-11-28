import 'package:flutter/material.dart';
import 'package:gta/components/@shared/layout.dart';

class MapVehiclesView extends StatelessWidget {
  final imageLink = "https://steamuserimages-a.akamaihd.net/ugc/1286291105822106438/AB1EA7960FEC45996307B41F9C767DD22DBA565A/";
  final titlePage = "Mapa de Veiculos";

  const MapVehiclesView({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutView(
        body: Container(
          height: 500,
          width: double.maxFinite,
          color: Colors.black12,
          child: InteractiveViewer(
            maxScale: 5,
            child: Image.network(imageLink),
          ),
        ),
        titlePage: titlePage);
  }
}
