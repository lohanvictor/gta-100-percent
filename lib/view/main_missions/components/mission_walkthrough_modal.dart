import 'package:flutter/material.dart';
import 'package:gta/constants/main_missions.dart';
import 'package:gta/view/main_missions/components/mission_walkthrough_card.dart';

class MissionWalkthroughModal extends StatelessWidget {
  final Mission mission;
  final String section;

  const MissionWalkthroughModal({super.key, required this.mission, required this.section});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.6,
        child: ListView.builder(
          itemBuilder: (context, index) => MissionWalkthroughCard(
            walkthroughMission: mission.walkthroughMissions[index],
            mission: mission.title,
            section: section,
          ),
          itemCount: mission.walkthroughMissions.length,
        ),
      ),
    );
  }
}
