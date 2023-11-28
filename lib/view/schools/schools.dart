import 'package:flutter/material.dart';
import 'package:gta/components/@shared/layout.dart';
import 'package:gta/components/button/completed_button.dart';
import 'package:gta/constants/menu_options.dart';
import 'package:gta/constants/storage_keys.dart';
import 'package:gta/view/schools/school_modal.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class SchoolsView extends StatefulWidget {
  const SchoolsView({super.key});

  @override
  State<SchoolsView> createState() => _SchoolsViewState();
}

class _SchoolsViewState extends State<SchoolsView> {
  final titlePage = "Escolas";
  Map<String, bool> _schoolStates = {
    "BIKE": false,
    "AIRPLANE": false,
    "CAR": false,
    "BOAT": false,
  };

  @override
  void initState() {
    (() async {
      final prefs = await SharedPreferences.getInstance();
      final bike = prefs.getBool(bikeStorageKey) ?? false;
      final airplane = prefs.getBool(airplaneStorageKey) ?? false;
      final car = prefs.getBool(carStorageKey) ?? false;
      final boat = prefs.getBool(boatStorageKey) ?? false;
      setState(() {
        _schoolStates = {
          "BIKE": bike,
          "AIRPLANE": airplane,
          "CAR": car,
          "BOAT": boat,
        };
      });
    })();
    super.initState();
  }

  Future<void> toggleSchoolStatus(String school) async {
    setState(() {
      _schoolStates[school] = !_schoolStates[school]!;
    });
    final prefs = await SharedPreferences.getInstance();
    final schoolStatus = prefs.getBool("$schoolStorageKey$school") ?? false;
    await prefs.setBool("$schoolStorageKey$school", !schoolStatus);
  }

  @override
  Widget build(BuildContext context) {
    final renderedSchools = [
      for (var school in schoolOptions)
        Column(
          children: [
            CompletedButton(
              isCompleted: _schoolStates[school.path]!,
              modal: SchoolModal(
                title: school.title,
                isCompleted: _schoolStates[school.path]!,
                toggleStatus: () {
                  toggleSchoolStatus(school.path);
                  Navigator.of(context).pop();
                },
                imageLink: schoolImages[school.path]!,
              ),
              title: school.title,
            ),
            const SizedBox(
              height: 16,
            )
          ],
        )
    ];
    return LayoutView(
        body: Flex(
          direction: Axis.vertical,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Scrollbar(
              thumbVisibility: false,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: renderedSchools,
                ),
              ),
            )
          ],
        ),
        titlePage: titlePage);
  }
}
