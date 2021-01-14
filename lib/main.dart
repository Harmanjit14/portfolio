import 'package:flutter/material.dart';
// import 'package:portfolio/constants/videoplayer.dart';
import 'package:portfolio/pages/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hi There!',
      theme: ThemeData(
        primarySwatch: Colors.amber,
        visualDensity: VisualDensity.comfortable,
        brightness: Brightness.dark
      ),
      home: ResponsiveWidget(),
    );
  }
}

class ResponsiveWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return LandingPage();
        } else
          return LandingPageMobile();
      },
    );
  }
}
