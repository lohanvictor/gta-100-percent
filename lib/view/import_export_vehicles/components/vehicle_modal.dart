import 'package:flutter/material.dart';
import 'package:gta/components/button/custom_outline_button.dart';

class VehicleModal extends StatelessWidget {
  final String title;
  final VoidCallback toggleStatus;
  final bool isCompleted;
  final String? imageLink;

  const VehicleModal(
      {super.key,
      required this.title,
      required this.toggleStatus,
      required this.isCompleted,
      this.imageLink});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
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
                      height: 250,
                      width: double.maxFinite,
                      child: Image.network(imageLink!, fit: BoxFit.contain),
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
