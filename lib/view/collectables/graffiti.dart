import 'package:flutter/material.dart';
import 'package:gta/components/button/counter_buttons.dart';
import 'package:gta/components/button/custom_outline_button.dart';
import 'package:gta/constants/storage_keys.dart';
import 'package:gta/view/collectables/collectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

class GraffitiView extends StatefulWidget {
  const GraffitiView({super.key});

  @override
  State<StatefulWidget> createState() {
    return _GraffitiView();
  }
}

class _GraffitiView extends State<GraffitiView> {
  final titlePage = "Graffite";
  final imageLink =
      "https://steamuserimages-a.akamaihd.net/ugc/776243970996022660/41B9328DB904D9A1EB837FC69ED3C7E40B34F5FB/";
  final videoLink = "https://youtu.be/AHKVjQa4eMo";
  late int _graffitiCounter = 0;
  static const int maxGraffiti = 100;

  @override
  void initState() {
    super.initState();
    (() async {
      final prefs = await SharedPreferences.getInstance();
      final graffitiCount = prefs.getInt(graffitiStorageKey) ?? 0;
      setState(() {
        _graffitiCounter = graffitiCount;
      });
    })();
  }

  void onPressSubtract() async {
    final prefs = await SharedPreferences.getInstance();
    final graffitiCounter = prefs.getInt(graffitiStorageKey) ?? 0;
    if (graffitiCounter > 0) {
      setState(() {
        _graffitiCounter -= 1;
      });
      await prefs.setInt(graffitiStorageKey, graffitiCounter - 1);
    }
  }

  void onPressAdd() async {
    final prefs = await SharedPreferences.getInstance();
    final graffitiCounter = prefs.getInt(graffitiStorageKey) ?? 0;
    if (graffitiCounter < 100) {
      setState(() {
        _graffitiCounter += 1;
      });
      await prefs.setInt(graffitiStorageKey, graffitiCounter + 1);
    }
  }

  void onPressCompleted() async {
    setState(() {
      _graffitiCounter = maxGraffiti;
    });
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt(graffitiStorageKey, maxGraffiti);
  }

  @override
  Widget build(BuildContext context) {
    bool canSubtract = _graffitiCounter > 0;
    bool canAdd = _graffitiCounter < maxGraffiti;

    return CollectablePage(
        titlePage: titlePage,
        imageLink: imageLink,
        videoLink: videoLink,
        counterButtons: CounterButtons(
          canAdd: canAdd,
          canSubtract: canSubtract,
          onPressAdd: onPressAdd,
          onPressSubtract: onPressSubtract,
          textCounter: _graffitiCounter.toString(),
        ),
        customOutlinedButton: CustomOutlinedButton(
          onPressed: onPressCompleted,
          text: "Completar",
          disabled: _graffitiCounter == maxGraffiti,
        ));
  }
}
