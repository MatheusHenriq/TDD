import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:tdd/app_modules.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ModularApp(
      module: AppModules(),
      debugMode: false,
      child: MaterialApp.router(
        title: "TDD",
        theme: ThemeData(primarySwatch: Colors.blue),
        routerConfig: Modular.routerConfig,
      ),
    );
  }
}
