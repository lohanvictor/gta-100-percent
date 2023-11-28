import 'package:flutter/material.dart';

class CustomOutlinedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final bool? disabled;
  const CustomOutlinedButton({super.key, required this.onPressed, required this.text, this.disabled = false});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: disabled! ? null : onPressed,
      child: Text(text),
      style: const ButtonStyle(
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.zero),
            side: BorderSide(
                width: 4,
                style: BorderStyle.solid,
                color: Colors.deepPurpleAccent),
          ),
        ),
      ),
    );
  }
}
