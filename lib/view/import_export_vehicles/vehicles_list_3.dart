import 'package:flutter/material.dart';
import 'package:gta/components/@shared/layout.dart';
import 'package:gta/constants/import_export_vehicles.dart';
import 'package:gta/view/import_export_vehicles/components/vehicle_card.dart';

class VehiclesList3View extends StatelessWidget {
  final titlePage = "III - Lista de Veículos";

  const VehiclesList3View({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutView(
        body: ListView.builder(
          itemBuilder: (context, index) => Padding(
            padding: EdgeInsets.only(
                bottom: listVehicles_3.length - 1 == index ? 8 : 0),
            child: VehicleCard(vehicle: listVehicles_3[index]),
          ),
          itemCount: listVehicles_3.length,
        ),
        titlePage: titlePage);
  }
}
