import 'package:flutter/material.dart';
import 'package:gta/components/@shared/layout.dart';
import 'package:gta/components/button/menu_button.dart';
import 'package:gta/constants/menu_options.dart';

class ImportExportVehicles extends StatelessWidget {
  final titlePage = "Importação/Exportação de Veículos";

  const ImportExportVehicles({super.key});

  @override
  Widget build(BuildContext context) {
    final renderedOptions = [
      for (var option in importExportVehiclesOptions)
        Padding(
          padding: const EdgeInsets.only(bottom: 2),
          child: SizedBox(
            width: double.infinity,
            height: 48,
            child: MenuButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(option.path);
                },
                text: option.title),
          ),
        )
    ];
    return LayoutView(
        body: ListView(children: renderedOptions), titlePage: titlePage);
  }
}
