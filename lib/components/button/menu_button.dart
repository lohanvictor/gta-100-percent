import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  final Function onPressed;
  final String text;
  const MenuButton({super.key, required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: FilledButton(
          onPressed: () => onPressed(),
          style: const ButtonStyle(
              shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(borderRadius: BorderRadius.zero))),
          child: Text(text)),
    );
  }
}
