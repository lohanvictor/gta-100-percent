import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gta/components/button/counter_buttons.dart';
import 'package:gta/components/button/custom_outline_button.dart';
import 'package:gta/constants/storage_keys.dart';
import 'package:gta/view/collectables/collectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HorseShoeView extends StatefulWidget {
  const HorseShoeView({super.key});

  @override
  State<StatefulWidget> createState() {
    return _HorseShoeView();
  }
}

class _HorseShoeView extends State<HorseShoeView> {
  final titlePage = "Ferraduras";
  final imageLink =
      "https://steamuserimages-a.akamaihd.net/ugc/776243970996101292/0FB31A84BD8E110E6DD71FE9F6A5F298E93FA47F/";
  final videoLink = "https://youtu.be/tgFWguTOJKY";
  late int _horseshoeCounter = 0;
  static const int maxHorseshoe = 50;

  @override
  void initState() {
    super.initState();
    (() async {
      final prefs = await SharedPreferences.getInstance();
      final horseshoeCount = prefs.getInt(horseshoeStorageKey) ?? 0;
      setState(() {
        _horseshoeCounter = horseshoeCount;
      });
    })();
  }

  void onPressSubtract() async {
    final prefs = await SharedPreferences.getInstance();
    final horseshoeCounter = prefs.getInt(horseshoeStorageKey) ?? 0;
    if (horseshoeCounter > 0) {
      await prefs.setInt(horseshoeStorageKey, horseshoeCounter - 1);
      setState(() {
        _horseshoeCounter -= 1;
      });
    }
  }

  void onPressAdd() async {
    final prefs = await SharedPreferences.getInstance();
    final horseshoeCounter = prefs.getInt(horseshoeStorageKey) ?? 0;
    if (horseshoeCounter < 100) {
      await prefs.setInt(horseshoeStorageKey, horseshoeCounter + 1);
      setState(() {
        _horseshoeCounter += 1;
      });
    }
  }

  void onPressCompleted() async {
    setState(() {
      _horseshoeCounter = maxHorseshoe;
    });
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt(horseshoeStorageKey, maxHorseshoe);
  }

  @override
  Widget build(BuildContext context) {
    bool canSubtract = _horseshoeCounter > 0;
    bool canAdd = _horseshoeCounter < maxHorseshoe;

    return CollectablePage(
        titlePage: titlePage,
        imageLink: imageLink,
        videoLink: videoLink,
        counterButtons: CounterButtons(
          canAdd: canAdd,
          canSubtract: canSubtract,
          onPressAdd: onPressAdd,
          onPressSubtract: onPressSubtract,
          textCounter: _horseshoeCounter.toString(),
        ),
        customOutlinedButton: CustomOutlinedButton(
          onPressed: onPressCompleted,
          text: "Completar",
          disabled: _horseshoeCounter == maxHorseshoe,
        ));
  }
}
