import 'package:flutter/material.dart';
import 'package:portfolio/constants/videoplayer.dart';
import 'package:portfolio/pages/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Harmanjit',
      theme: ThemeData(
        primarySwatch: Colors.amber,
        visualDensity: VisualDensity.comfortable,
      ),
      home: Player(),
    );
  }
}
