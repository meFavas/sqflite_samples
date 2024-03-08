// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sqflite_samples/controller/homescreen_controller.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  TextEditingController c1 = TextEditingController();
  TextEditingController c2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 100),
            TextFormField(
              controller: c1,
              decoration: InputDecoration(
                hintText: ("Name"),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 50),
            TextFormField(
              controller: c2,
              decoration: InputDecoration(
                hintText: ("des"),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 100),
            ElevatedButton(
              onPressed: () async {
                await Homescreencontroller.adddatatodb(
                    name: c1.text, des: c2.text);
              },
              child: Text("save"),
            ),
            SizedBox(height: 100),
            Text('data'),
            SizedBox(height: 100),
            ElevatedButton(
              onPressed: () async {
                await Homescreencontroller.getalldatafromdb();
              },
              child: Text("get"),
            ),
          ],
        ),
      ),
    );
  }
}
