import 'package:flutter/material.dart';
import 'package:gta/components/@shared/layout.dart';
import 'package:gta/components/button/completed_button.dart';
import 'package:gta/constants/menu_options.dart';
import 'package:gta/constants/storage_keys.dart';
import 'package:gta/view/delivery/delivery_modal.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DeliveryView extends StatefulWidget {
  const DeliveryView({super.key});

  @override
  State<DeliveryView> createState() => _DeliveryViewState();
}

class _DeliveryViewState extends State<DeliveryView> {
  final titlePage = "Missões de Entregador";
  Map<String, bool> _delivery = {};
  static const losSantosStorageKey =
      "$deliverySideMissionStorageKey$losSantosDeliveryMissionStorageKey";
  static const lasVenturasStorageKey =
      "$deliverySideMissionStorageKey$lasVenturasDeliveryMissionStorageKey";
  static const sanFierroStorageKey =
      "$deliverySideMissionStorageKey$sanFierroDeliveryMissionStorageKey";
  Map<String, String> storageKeys = {
    losSantosDeliveryMissionStorageKey: losSantosStorageKey,
    sanFierroDeliveryMissionStorageKey: sanFierroStorageKey,
    lasVenturasDeliveryMissionStorageKey: lasVenturasStorageKey
  };

  @override
  void initState() {
    (() async {
      final prefs = await SharedPreferences.getInstance();
      final losSantos = prefs.getBool(
              "$deliverySideMissionStorageKey$losSantosDeliveryMissionStorageKey") ??
          false;
      final lasVenturas = prefs.getBool(
              "$deliverySideMissionStorageKey$lasVenturasDeliveryMissionStorageKey") ??
          false;
      final sanFierro = prefs.getBool(
              "$deliverySideMissionStorageKey$sanFierroDeliveryMissionStorageKey") ??
          false;
      setState(() {
        _delivery = {
          lasVenturasDeliveryMissionStorageKey: lasVenturas,
          losSantosDeliveryMissionStorageKey: losSantos,
          sanFierroDeliveryMissionStorageKey: sanFierro,
        };
      });
    })();
    super.initState();
  }

  void toggleStatus(String delivery) async {
    final newValue = !_delivery[delivery]!;
    setState(() {
      _delivery[delivery] = newValue;
    });
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(storageKeys[delivery]!, newValue);
  }

  @override
  Widget build(BuildContext context) {
    return LayoutView(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Scrollbar(
              child: ListView.builder(
            itemBuilder: (context, index) => Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CompletedButton(
                  isCompleted: _delivery[deliveryOptions[index].path] ?? false,
                  modal: DeliveryModal(
                    toggleStatus: () {
                      toggleStatus(deliveryOptions[index].path);
                    },
                    title: deliveryOptions[index].title,
                    isCompleted: _delivery[deliveryOptions[index].path]!,
                    imageLink: deliveryImages[deliveryOptions[index].path]!,
                  ),
                  title: deliveryOptions[index].title,
                ),
                if (index != deliveryOptions.length)
                  const SizedBox(
                    height: 8,
                  )
              ],
            ),
            itemCount: deliveryOptions.length,
          )),
        ),
        titlePage: titlePage);
  }
}
