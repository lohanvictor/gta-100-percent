import 'package:flutter/material.dart';
import 'package:gta/constants/main_missions.dart';
import 'package:gta/view/main_missions/components/mission_card.dart';

class MissionSection extends StatelessWidget {
  final String imageLink;
  final String text;

  const MissionSection(
      {super.key, required this.imageLink, required this.text});

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.horizontal,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: SizedBox(
            width: 16,
            height: 16,
            child: Image.network(imageLink),
          ),
        ),
        Container(width: 8),
        Text(
          text,
          style: TextStyle(fontSize: 14),
        )
      ],
    );
  }
}

class MainMissionSection extends StatefulWidget {
  final String section;
  final List<Mission> missions;

  const MainMissionSection(
      {super.key, required this.section, required this.missions});

  @override
  State<MainMissionSection> createState() => _MainMissionSectionState();
}

class _MainMissionSectionState extends State<MainMissionSection> {
  bool _open = false;

  void toggleOpen() {
    setState(() {
      _open = !_open;
    });
  }

  @override
  Widget build(BuildContext context) {
    final renderedChildren = [
      for (var i = 0; i < widget.missions.length; i++)
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Flex(
            direction: Axis.vertical,
            children: [
              MissionCard(mission: widget.missions[i], section: widget.section),
              Container(
                height: 4,
              )
            ],
          ),
        )
    ];
    return Flex(
      direction: Axis.vertical,
      children: [
        SizedBox(
            width: double.maxFinite,
            child: TextButton(
                onPressed: toggleOpen,
                style: const ButtonStyle(alignment: Alignment.centerLeft),
                child: Text(
                  widget.section,
                ))),
        if (_open)
          Flex(
            direction: Axis.vertical,
            mainAxisAlignment: MainAxisAlignment.start,
            children: renderedChildren,
          )
      ],
    );
  }
}
