import 'package:flutter/material.dart';
import 'package:gta/components/button/custom_outline_button.dart';

class SchoolModal extends StatelessWidget {
  final String title;
  final VoidCallback toggleStatus;
  final bool isCompleted;
  final String? imageLink;

  const SchoolModal(
      {super.key,
      required this.title,
      this.imageLink,
      required this.toggleStatus,
      required this.isCompleted});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column( mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Column(
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Colors.black87,
                ),
              ),
              const Divider(
                height: 8,
                color: Colors.transparent,
              ),
              if (imageLink != null)
                SizedBox(
                  width: double.maxFinite,
                  // height: 180,
                  child: Image.network(imageLink!),
                ),
              const Divider(
                height: 8,
                color: Colors.transparent,
              )
            ],
          ),
          SizedBox(
            width: double.maxFinite,
            height: 64,
            child: CustomOutlinedButton(
                onPressed: toggleStatus,
                text: isCompleted ? "Desfazer" : "Concluir"),
          )
        ]),
      ),
    );
  }
}
