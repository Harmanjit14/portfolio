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
  VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
        'https://firebasestorage.googleapis.com/v0/b/portfolio-21b56.appspot.com/o/designing.mp4?alt=media&token=6201543d-2a15-4547-ab3d-b35c626f1643')
      ..initialize();
    _controller.setLooping(true);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  int index = 0;

  Widget showScreen() {
    switch (index) {
      case 0:
        return Container();
        break;
      case 1:
        return SizedBox.expand(
          child: FittedBox(
              fit: BoxFit.cover,
              child: Container(
                  width: _controller.value.size?.width ?? 0,
                  height: _controller.value.size?.height ?? 0,
                  child: VideoPlayer(_controller))),
        );
        break;
      default:
        return Container();
    }
  }

  Widget botText() {
    switch (index) {
      case 0:
        return SizedBox.shrink();
        break;
      case 1:
        return Container(
          padding: EdgeInsets.fromLTRB(0, 0, 30, 15),
          alignment: Alignment.bottomRight,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.volume_up,
                color: Colors.grey[200],
              ),
              SizedBox(width: 10),
              myText("Increase the Volume", Colors.grey[200], 12),
            ],
          ),
        );
      default:
        return SizedBox.shrink();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff03030F),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          showScreen(),
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          InkWell(
                            onHover: (val) {
                              // _controller.play();
                              setState(() {
                                switch (val) {
                                  case true:
                                    setState(() {
                                      index = 1;

                                      _controller.play();
                                    });

                                    break;
                                  case false:
                                    {
                                      setState(() {
                                        _controller.pause();
                                        index = 0;
                                      });
                                    }
                                    break;
                                  default:
                                }
                              });
                            },
                            onTap: () {},
                            child: headText("Designing.", Colors.white, 50),
                          ),
                          SizedBox(width: 15),
                          InkWell(
                            onHover: (val) {
                              // _controller.play();
                              setState(() {
                                switch (val) {
                                  case true:
                                    setState(() {
                                      index = 1;

                                      _controller.play();
                                    });

                                    break;
                                  case false:
                                    {
                                      setState(() {
                                        _controller.pause();
                                        index = 0;
                                      });
                                    }
                                    break;
                                  default:
                                }
                              });
                            },
                            onTap: () {},
                            child: headText("Development.", Colors.white, 50),
                          ),
                        ],
                      ),
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
          botText(),
        ],
      ),
    );
  }
}
