import 'package:flutter/material.dart';
import 'package:gta/constants/main_missions.dart';
import 'package:gta/view/main_missions/components/mission_walkthrough_modal.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class MissionCard extends StatelessWidget {
  final Mission mission;
  final String section;

  const MissionCard({super.key, required this.mission, required this.section});

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: () {
        showBarModalBottomSheet(
          context: context,
          builder: (context) => MissionWalkthroughModal(
            mission: mission,
            section: section,
          ),
        );
      },
      style: const ButtonStyle(
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(8),
                topLeft: Radius.circular(8),
              ),
            ),
          ),
          padding: MaterialStatePropertyAll(EdgeInsets.zero)),
      child: Padding(
          padding: const EdgeInsets.all(16),
          child: Flex(
            direction: Axis.horizontal,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 16,
                height: 16,
                child: Image.network(mission.icon, fit: BoxFit.contain),
              ),
              Container(
                width: 16,
              ),
              Text(mission.title, style: const TextStyle(fontSize: 20)),
            ],
          )),
    );
  }
}
