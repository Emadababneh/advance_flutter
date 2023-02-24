

import 'package:advance_flutter/presentation/resources/them_manager.dart';
import 'package:flutter/material.dart';

import '../presentation/resources/routes_manager.dart';
class MyApp extends StatefulWidget {

  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.getRouts,
      initialRoute: Routes.splashRouts,
      theme: getApplicationTheme(),
    );
  }
}
