import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:portfolio/constants/navbarItem.dart';
import 'package:portfolio/constants/socialIcons.dart';
import 'package:portfolio/constants/text_style.dart';
import 'package:video_player/video_player.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  VideoPlayerController _controller =
      VideoPlayerController.network("https://firebasestorage.googleapis.com/v0/b/portfolio-21b56.appspot.com/o/designing.mp4?alt=media&token=c105f903-78d2-4a3c-8a2b-5009007c1d4b");

  Widget hoverBg() {
    return Container(
      child: Center(
        child: VideoPlayer(_controller),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff03030F),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            child: hoverBg(),
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(30, 10, 30, 0),
                // height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onHover: (value) {
                        // _controller.play();
                      },
                      onTap: () {
                        _controller.play();
                        setState(() {});
                      },
                      child: Container(
                        child: myText("Harmanjit Singh", Colors.grey[200], 20),
                      ),
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
                        SocialIcon(LineAwesomeIcons.github, 0),
                        SizedBox(height: 15),
                        SocialIcon(LineAwesomeIcons.instagram, 1),
                        SizedBox(height: 15),
                        SocialIcon(LineAwesomeIcons.at, 2),
                        SizedBox(height: 15),
                        SocialIcon(LineAwesomeIcons.linkedin, 3),
                        SizedBox(height: 15),
                        SocialIcon(LineAwesomeIcons.archive, 4)
                      ]),
                    )
                  ]),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
