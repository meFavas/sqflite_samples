// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sqflite_samples/controller/homescreen_controller.dart';
import 'package:sqflite_samples/view/homescreen/homescreen.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Homescreencontroller.initDb();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homescreen(),
    );
  }
}
