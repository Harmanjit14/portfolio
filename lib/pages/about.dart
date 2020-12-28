import 'package:flutter/material.dart';

class AboutSection extends StatefulWidget {
  @override
  _AboutSectionState createState() => _AboutSectionState();
}

class _AboutSectionState extends State<AboutSection> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      height: screenSize.height,
      width: screenSize.width,
      child: Column(
        children: [
          Expanded(flex: 1, child: Container(child: Row())),
          Expanded(flex: 1, child: Container(child: Row())),
        ],
      ),
    );
  }
}
