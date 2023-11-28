import 'package:flutter/material.dart';
import 'package:gta/components/button/custom_outline_button.dart';

class DeliveryModal extends StatelessWidget {
  final VoidCallback toggleStatus;
  final String title;
  final String imageLink;
  final bool isCompleted;

  const DeliveryModal(
      {super.key,
      required this.toggleStatus,
      required this.title,
      required this.isCompleted,
      required this.imageLink});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
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
                  SizedBox(
                    height: 300,
                    child: Image.network(
                      imageLink,
                      fit: BoxFit.contain,
                    ),
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
                    onPressed: () {
                      toggleStatus();
                      Navigator.of(context).pop();
                    },
                    text: isCompleted ? "Desfazer" : "Concluir"),
              )
            ]),
      ),
    );
  }
}
