import 'package:flutter/material.dart';
import 'package:gta/view/collectables/collectables.dart';
import 'package:gta/view/collectables/graffiti.dart';
import 'package:gta/view/collectables/horseshoe.dart';
import 'package:gta/view/collectables/oyster.dart';
import 'package:gta/view/collectables/pictures.dart';
import 'package:gta/view/import_export_vehicles/import_export_vehicles.dart';
import 'package:gta/view/import_export_vehicles/map_vehicles.dart';
import 'package:gta/view/import_export_vehicles/vehicles_list_1.dart';
import 'package:gta/view/import_export_vehicles/vehicles_list_2.dart';
import 'package:gta/view/import_export_vehicles/vehicles_list_3.dart';
import 'package:gta/view/main_missions/main_missions.dart';
import 'package:gta/view/schools/schools.dart';

final Map<String, WidgetBuilder> routes = {
  // Main Missions
  "MAIN_MISSIONS": (BuildContext context) => const MainMissionView(),

  // Collectables and children
  "COLLECTABLES": (BuildContext context) => const CollectablesView(),
  "OYSTER": (BuildContext context) => const OysterView(),
  "GRAFFITI": (BuildContext context) => const GraffitiView(),
  "PICTURES": (BuildContext context) => const PicturesView(),
  "HORSESHOE": (BuildContext context) => const HorseShoeView(),

  // School
  "SCHOOLS": (BuildContext context) => const SchoolsView(),

  // Import Export Vehicles
  "IMPORT_EXPORT_VEHICLES": (BuildContext context) => const ImportExportVehicles(),
  "VEHICLES_MAP": (BuildContext context) => const MapVehiclesView(),
  "VEHICLES_LIST_1": (BuildContext context) => const VehiclesList1View(),
  "VEHICLES_LIST_2": (BuildContext context) => const VehiclesList2View(),
  "VEHICLES_LIST_3": (BuildContext context) => const VehiclesList3View(),
};