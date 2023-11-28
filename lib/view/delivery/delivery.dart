import 'package:flutter/material.dart';
import 'package:gta/components/@shared/layout.dart';
import 'package:gta/components/button/completed_button.dart';
import 'package:gta/constants/storage_keys.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DeliveryView extends StatefulWidget {
  const DeliveryView({super.key});

  @override
  State<DeliveryView> createState() => _DeliveryViewState();
}

class _DeliveryViewState extends State<DeliveryView> {
  final titlePage = "Missões de Entregador";
  Map<String, bool> _delivery = {};

  @override
  void initState() {
    (() async {
      final prefs = await SharedPreferences.getInstance();
      final losSantos = prefs.getBool("$deliverySideMissionStorageKey")
    })();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutView(
        body: SingleChildScrollView(
            padding: EdgeInsets.all(8),
            child: ListView.builder(
              itemBuilder: (context, index) =>
                  CompletedButton(
                    isCompleted: false,
                    modal: Container(),
                    title: "",
                  ),
              itemCount:,
            )),
        titlePage: titlePage);
  }
}
