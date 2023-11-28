import 'package:gta/constants/storage_keys.dart';

class MenuOptions {
  String title;
  String path;

  MenuOptions(this.title, this.path);
}

final List<MenuOptions> mainMenuOptions = [
  MenuOptions("Missões Principais", "MAIN_MISSIONS"),
  MenuOptions("Serviços Secundários", "SECONDARY_SERVICES"),
  MenuOptions("Missões de Veículos", "VEHICLES_MISSIONS"),
  MenuOptions("Missões de Entregador", "DELIVERY_MISSIONS"),
  MenuOptions("Todas as Propriedades", "PROPERTY_NAMES"),
  MenuOptions("Colecionáveis", "COLLECTABLES"),
  MenuOptions("Escolas", "SCHOOLS"),
  MenuOptions("Importação/Exportação de Veículos", "IMPORT_EXPORT_VEHICLES"),
  MenuOptions("Corridas", "RACES"),
  MenuOptions("Desafios", "CHALLENGES"),
  MenuOptions("Corridas de Estádio", "STADIUM_RACES"),
  MenuOptions("Academias", "GYMS"),
  MenuOptions("Estande de tiro", "SHOOTING_RANGE")
];

final List<MenuOptions> collectablesOptions = [
  MenuOptions("Ostras", "OYSTER"),
  MenuOptions("Pixações", "GRAFFITI"),
  MenuOptions("Fotos", "PICTURES"),
  MenuOptions("Ferradura", "HORSESHOE"),
];

final List<MenuOptions> schoolOptions = [
  MenuOptions("Moto", "BIKE"),
  MenuOptions("Carro", "CAR"),
  MenuOptions("Aviação", "AIRPLANE"),
  MenuOptions("Barco", "BOAT"),
];

final Map<String, String> schoolImages = {
  "CAR":
      "https://oyster.ignimgs.com/mediawiki/apis.ign.com/grand-theft-auto-san-andreas/6/62/Driving_Loc.jpg?width=1024",
  "AIRPLANE":
      "https://oyster.ignimgs.com/mediawiki/apis.ign.com/grand-theft-auto-san-andreas/d/df/Pilot_Loc.jpg?width=1024",
  "BIKE":
      "https://oyster.ignimgs.com/mediawiki/apis.ign.com/grand-theft-auto-san-andreas/f/f6/Bike_School_Loc.jpg?width=1024",
  "BOAT":
      "https://oyster.ignimgs.com/mediawiki/apis.ign.com/grand-theft-auto-san-andreas/a/ae/Boat_School_Loc.jpg?width=1024"
};

final List<MenuOptions> importExportVehiclesOptions = [
  MenuOptions("Mapa dos Veículos", "VEHICLES_MAP"),
  MenuOptions("I - Lista de Veículos", "VEHICLES_LIST_1"),
  MenuOptions("II - Lista de Veículos", "VEHICLES_LIST_2"),
  MenuOptions("III - Lista de Veículos", "VEHICLES_LIST_3"),
];

final List<MenuOptions> deliveryOptions = [
  MenuOptions("Las Venturas", lasVenturasDeliveryMissionStorageKey),
  MenuOptions("San Fierro", sanFierroDeliveryMissionStorageKey),
  MenuOptions("Los Santos", losSantosDeliveryMissionStorageKey),
];

final Map<String, String> deliveryImages = {
  lasVenturasDeliveryMissionStorageKey:
      "https://steamuserimages-a.akamaihd.net/ugc/1324571851485274003/540D6F438FF84B1DAF711B1B224C302B2D21C3D9/",
  sanFierroDeliveryMissionStorageKey:
      "https://steamuserimages-a.akamaihd.net/ugc/1324571851485273614/C41E685776840101062925EAE49A01CD3DAA5DE9/",
  losSantosDeliveryMissionStorageKey:
      "https://steamuserimages-a.akamaihd.net/ugc/1324571851485273364/39DAD10EAC3B7BAB1924943F23FB957B9098E2C1/",
};
