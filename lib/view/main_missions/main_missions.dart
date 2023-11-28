import 'package:flutter/material.dart';
import 'package:gta/components/@shared/layout.dart';
import 'package:gta/constants/main_missions.dart';
import 'package:gta/view/main_missions/mission.dart';

class MainMissionView extends StatefulWidget {
  const MainMissionView({super.key});

  @override
  State<MainMissionView> createState() => _MainMissionViewState();
}

class _MainMissionViewState extends State<MainMissionView> {
  final titlePage = "Missões Principais";

  @override
  Widget build(BuildContext context) {
    return LayoutView(body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext context, int i) {
          return MainMissionSection(
              section: mainMissions[i].section,
              missions: mainMissions[i].children);
        },
        itemCount: mainMissions.length), titlePage: titlePage);
  }
}
