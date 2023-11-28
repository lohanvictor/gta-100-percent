import 'package:flutter/material.dart';

class LayoutView extends StatelessWidget {
  final Widget body;
  final String titlePage;

  const LayoutView({super.key, required this.body, required this.titlePage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(titlePage),
      ),
      body: body,
    );
  }
}
