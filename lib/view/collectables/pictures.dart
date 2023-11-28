import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gta/components/button/counter_buttons.dart';
import 'package:gta/components/button/custom_outline_button.dart';
import 'package:gta/constants/storage_keys.dart';
import 'package:gta/view/collectables/collectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PicturesView extends StatefulWidget {
  const PicturesView({super.key});

  @override
  State<StatefulWidget> createState() {
    return _PicturesView();
  }
}

class _PicturesView extends State<PicturesView> {
  final titlePage = "Fotos";
  final imageLink =
      "https://steamuserimages-a.akamaihd.net/ugc/776243970996092979/CE85E9888C624538147A0FD4CF6C9F172FA6E8EF/";
  final videoLink = "https://youtu.be/Tkp9bmRM0dc";
  late int _picturesCounter = 0;
  static const int maxPictures = 50;

  @override
  void initState() {
    super.initState();
    (() async {
      final prefs = await SharedPreferences.getInstance();
      final picturesCount = prefs.getInt(picturesStorageKey) ?? 0;
      setState(() {
        _picturesCounter = picturesCount;
      });
    })();
  }

  void onPressSubtract() async {
    final prefs = await SharedPreferences.getInstance();
    final picturesCounter = prefs.getInt(picturesStorageKey) ?? 0;
    if (picturesCounter > 0) {
      await prefs.setInt(picturesStorageKey, picturesCounter - 1);
      setState(() {
        _picturesCounter -= 1;
      });
    }
  }

  void onPressAdd() async {
    final prefs = await SharedPreferences.getInstance();
    final picturesCounter = prefs.getInt(picturesStorageKey) ?? 0;
    if (picturesCounter < 100) {
      await prefs.setInt(picturesStorageKey, picturesCounter + 1);
      setState(() {
        _picturesCounter += 1;
      });
    }
  }

  void onPressCompleted() async {
    setState(() {
      _picturesCounter = maxPictures;
    });
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt(picturesStorageKey, maxPictures);
  }

  @override
  Widget build(BuildContext context) {
    bool canSubtract = _picturesCounter > 0;
    bool canAdd = _picturesCounter < maxPictures;

    return CollectablePage(
        titlePage: titlePage,
        imageLink: imageLink,
        videoLink: videoLink,
        counterButtons: CounterButtons(
          canAdd: canAdd,
          canSubtract: canSubtract,
          onPressAdd: onPressAdd,
          onPressSubtract: onPressSubtract,
          textCounter: _picturesCounter.toString(),
        ),
        customOutlinedButton: CustomOutlinedButton(
          onPressed: onPressCompleted,
          text: "Completar",
          disabled: _picturesCounter == maxPictures,
        ));
  }
}
