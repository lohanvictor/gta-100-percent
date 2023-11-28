import 'package:gta/constants/menu_options.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gta/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  final String titleApp = "GTA San Andreas 100%";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: titleApp,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: "GTA San Andreas 100%"),
      debugShowCheckedModeBanner: false,
      routes: routes,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final renderedOptions = [
      for (var option in mainMenuOptions)
        Padding(
          padding: const EdgeInsets.only(bottom: 2),
          child: SizedBox(
            width: double.infinity,
            height: 48,
            child: FilledButton(
                onPressed: () {
                  final implementedRoutes = routes.keys;
                  if (implementedRoutes.any((route) => route == option.path)) {
                    Navigator.of(context).pushNamed(option.path);
                  }
                },
                style: const ButtonStyle(
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                  ),
                ),
                child: Text(option.title)),
          ),
        )
    ];

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: ListView(children: renderedOptions));
  }
}
