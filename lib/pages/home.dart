import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:portfolio/constants/navbarItem.dart';
import 'package:portfolio/constants/text_style.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff03030F),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(30, 10, 30, 0),
            // height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: myText("Harmanjit Singh", Colors.grey[200], 20),
                ),
                Container(
                  child: Row(
                    children: [
                      NavbarItem(0, "Projects", Icons.work),
                      NavbarItem(1, "Achievements", Icons.emoji_events),
                      NavbarItem(2, "About Me!", Icons.emoji_emotions),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              child: Stack(children: [
                Center(
                  child: headText("Harmanjit Singh", Colors.white, 40),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(30, 0, 0, 20),
                  alignment: Alignment.bottomLeft,
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    IconButton(
                      icon: Icon(LineAwesomeIcons.github),
                      onPressed: () {},
                      padding: EdgeInsets.all(5),
                      color: Colors.white,
                      splashColor: Colors.amber,
                      // hoverColor: Colors.amber,
                      splashRadius: 20,
                      iconSize: 30,
                    )
                  ]),
                )
              ]),
            ),
          )
        ],
      ),
    );
  }
}
