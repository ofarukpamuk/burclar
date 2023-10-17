import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'BurcListesi.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});
  final List liste = new List.generate(100, (index) => null);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: BurcListesi(),
    );
  }
}
