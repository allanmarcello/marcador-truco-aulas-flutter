import 'package:flutter/material.dart';
import 'package:marcador_truco/views/home_page.dart';
import 'package:screen/screen.dart';

Future main() async {
  bool isKeptOn = await Screen.isKeptOn;

// Prevent screen from going into sleep mode:
  Screen.keepOn(true);
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Marcador de Truco',
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: HomePage(),
    ),
  );
}
