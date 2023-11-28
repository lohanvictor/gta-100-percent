import 'package:flutter/material.dart';

class CounterButtons extends StatelessWidget {
  final bool canSubtract;
  final bool canAdd;
  final String textCounter;
  final VoidCallback onPressSubtract;
  final VoidCallback onPressAdd;
  const CounterButtons(
      {super.key,
      required this.canSubtract,
      required this.canAdd,
      required this.onPressSubtract,
      required this.textCounter,
      required this.onPressAdd});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        OutlinedButton(
          onPressed: canSubtract ? onPressSubtract : null,
          style: const ButtonStyle(
              fixedSize: MaterialStatePropertyAll(Size(128, 64)),
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(4),
                topLeft: Radius.circular(4),
              )))),
          child: const Text("-"),
        ),
        Container(
            height: 64,
            width: 64,
            decoration: const BoxDecoration(borderRadius: BorderRadius.zero),
            alignment: Alignment.center,
            child: Text(textCounter)),
        OutlinedButton(
          onPressed: canAdd ? onPressAdd : null,
          style: const ButtonStyle(
              fixedSize: MaterialStatePropertyAll(Size(128, 64)),
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(4),
                topRight: Radius.circular(4),
              )))),
          child: const Text("+"),
        ),
      ],
    );
  }
}
