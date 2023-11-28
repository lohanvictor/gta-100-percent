import 'package:flutter/material.dart';
import 'package:gta/components/@shared/layout.dart';
import 'package:gta/constants/import_export_vehicles.dart';
import 'package:gta/view/import_export_vehicles/components/vehicle_card.dart';

class VehiclesList1View extends StatelessWidget {
  final titlePage = "I - Lista de Veículos";

  const VehiclesList1View({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutView(
        body: ListView.builder(
          itemBuilder: (context, index) => Padding(
            padding: EdgeInsets.only(
                bottom: listVehicles_1.length - 1 == index ? 8 : 0),
            child: VehicleCard(vehicle: listVehicles_1[index]),
          ),
          itemCount: listVehicles_1.length,
        ),
        titlePage: titlePage);
  }
}
