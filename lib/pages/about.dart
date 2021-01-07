import 'package:flutter/material.dart';
import 'package:portfolio/constants/text_style.dart';

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
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SizedBox.expand(
            child: Image.asset("assets/white.jpg"),
          ),
          Row(
            children: [
              Container(
                  margin: EdgeInsets.fromLTRB(50, 0, 20, 0),
                  child: headText("About Me",Colors.black, 50)),
              Expanded(
                  child: SingleChildScrollView(
                child: Column(
                  children: [],
                ),
              ))
            ],
          ),
        ],
      ),
    );
  }
}
