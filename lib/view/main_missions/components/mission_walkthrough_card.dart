import 'package:flutter/material.dart';
import 'package:gta/constants/main_missions.dart';
import 'package:gta/constants/storage_keys.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

class MissionWalkthroughCard extends StatefulWidget {
  final WalkthroughMission walkthroughMission;
  final String mission;
  final String section;

  const MissionWalkthroughCard(
      {super.key,
      required this.walkthroughMission,
      required this.mission,
      required this.section});

  @override
  State<MissionWalkthroughCard> createState() => _MissionWalkthroughCardState();
}

class _MissionWalkthroughCardState extends State<MissionWalkthroughCard> {
  bool _isChecked = false;

  Future<void> toggleStatus(bool value) async {
    setState(() {
      _isChecked = value;
    });
    final storageKey =
        "$mainMissionsStorageKey[${widget.section} - ${widget.mission}]${widget.walkthroughMission.name}";
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(storageKey, value);
  }

  @override
  void initState() {
    (() async {
      final storageKey =
          "$mainMissionsStorageKey[${widget.section} - ${widget.mission}]${widget.walkthroughMission.name}";
      final prefs = await SharedPreferences.getInstance();
      final initStatus = prefs.getBool(storageKey) ?? false;
      setState(() {
        _isChecked = initStatus;
      });
    })();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.maxFinite,
        child: TextButton(
            style: ButtonStyle(
              shape: MaterialStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
            ),
            onPressed: () async {
              final url = Uri.parse(widget.walkthroughMission.videoLink);
              if (await canLaunchUrl(url)) launchUrl(url);
            },
            child: Flex(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              direction: Axis.horizontal,
              children: [
                Flex(
                    direction: Axis.horizontal,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Transform.scale(
                            scale: 1.3,
                            child: SizedBox(
                              width: 16,
                              height: 16,
                              child: Checkbox(
                                  side: BorderSide(
                                      width: 1,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimaryContainer),
                                  value: _isChecked,
                                  onChanged: (value) {
                                    toggleStatus(value ?? false);
                                  }),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 16,
                      ),
                      Text(
                        widget.walkthroughMission.name,
                        style: const TextStyle(fontSize: 16),
                      )
                    ]),
                const Text("▷",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
              ],
            )));
  }
}
