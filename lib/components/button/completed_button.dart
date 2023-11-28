import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class CompletedButton extends StatelessWidget {
  final String title;
  final bool isCompleted;
  final Widget modal;

  const CompletedButton(
      {super.key,
      required this.isCompleted,
      required this.modal,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      height: 80,
      child: ElevatedButton(
          style: ButtonStyle(
              shape: const MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(4)),
              )),
              backgroundColor: MaterialStatePropertyAll(
                  isCompleted ? Colors.greenAccent : Colors.redAccent)),
          onPressed: () {
            showBarModalBottomSheet(
                context: context, builder: (context) => modal);
            // toggleSchoolStatus(school.path);
          },
          child: Text(
            title,
            style: const TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          )),
    );
  }
}
