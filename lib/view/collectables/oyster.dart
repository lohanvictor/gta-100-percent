import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gta/components/button/counter_buttons.dart';
import 'package:gta/components/button/custom_outline_button.dart';
import 'package:gta/constants/storage_keys.dart';
import 'package:gta/view/collectables/collectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OysterView extends StatefulWidget {
  const OysterView({super.key});

  @override
  State<StatefulWidget> createState() {
    return _OysterView();
  }
}

class _OysterView extends State<OysterView> {
  final titlePage = "Ostras";
  final imageLink =
      "https://steamuserimages-a.akamaihd.net/ugc/776243970995996548/05AED9DE509DDB8A11AB7275C30EB8DA745AC25A/";
  final videoLink = "https://youtu.be/uvxcnzzmesg";
  late int _oysterCounter = 0;
  static const int maxOyster = 50;

  @override
  void initState() {
    super.initState();
    (() async {
      final prefs = await SharedPreferences.getInstance();
      final oysterCount = prefs.getInt(oysterStorageKey) ?? 0;
      setState(() {
        _oysterCounter = oysterCount;
      });
    })();
  }

  void onPressSubtract() async {
    final prefs = await SharedPreferences.getInstance();
    final oysterCounter = prefs.getInt(oysterStorageKey) ?? 0;
    if (oysterCounter > 0) {
      setState(() {
        _oysterCounter -= 1;
      });
      await prefs.setInt(oysterStorageKey, oysterCounter - 1);
    }
  }

  void onPressAdd() async {
    final prefs = await SharedPreferences.getInstance();
    final oysterCounter = prefs.getInt(oysterStorageKey) ?? 0;
    if (oysterCounter < 100) {
      setState(() {
        _oysterCounter += 1;
      });
      await prefs.setInt(oysterStorageKey, oysterCounter + 1);
    }
  }

  void onPressCompleted() async {
    setState(() {
      _oysterCounter = maxOyster;
    });
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt(oysterStorageKey, maxOyster);
  }

  @override
  Widget build(BuildContext context) {
    bool canSubtract = _oysterCounter > 0;
    bool canAdd = _oysterCounter < maxOyster;

    return CollectablePage(
        titlePage: titlePage,
        imageLink: imageLink,
        videoLink: videoLink,
        counterButtons: CounterButtons(
          canAdd: canAdd,
          canSubtract: canSubtract,
          onPressAdd: onPressAdd,
          onPressSubtract: onPressSubtract,
          textCounter: _oysterCounter.toString(),
        ),
        customOutlinedButton: CustomOutlinedButton(
          onPressed: onPressCompleted,
          text: "Completar",
          disabled: _oysterCounter == maxOyster,
        ));
  }
}
