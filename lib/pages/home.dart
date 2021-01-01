import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:portfolio/constants/navbarItem.dart';
import 'package:portfolio/constants/socialIcons.dart';
import 'package:portfolio/constants/text_style.dart';
import 'package:portfolio/pages/about.dart';
import 'package:portfolio/pages/carousel.dart';
import 'package:portfolio/pages/credits.dart';
import 'package:video_player/video_player.dart';
import 'package:portfolio/constants/scroll.dart';

// ignore: unused_element
double scrollPosition = 0;

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  VideoPlayerController _controller;
  VideoPlayerController _controller2;
  VideoPlayerController _controller3;
  VideoPlayerController _controller4;
  ScrollController _scrollController;

  _scrollListener() {
    setState(() {
      scrollPosition = _scrollController.position.pixels;
    });
  }

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
        'https://firebasestorage.googleapis.com/v0/b/portfolio-21b56.appspot.com/o/designing.mp4?alt=media&token=6201543d-2a15-4547-ab3d-b35c626f1643')
      ..initialize();
    _controller.setLooping(true);
    _controller2 = VideoPlayerController.network(
        'https://firebasestorage.googleapis.com/v0/b/portfolio-21b56.appspot.com/o/work.mp4?alt=media&token=8963d4ab-3169-41f9-b5b4-dba5d31237a4')
      ..initialize();
    _controller2.setLooping(true);
    _controller3 = VideoPlayerController.network(
        'https://firebasestorage.googleapis.com/v0/b/portfolio-21b56.appspot.com/o/apps.mp4?alt=media&token=cecf23f8-4ad7-4e16-aa27-8dbbb712230d')
      ..initialize();
    _controller3.setLooping(true);
    _controller4 = VideoPlayerController.asset("assets/bg.mp4")..initialize();
    _controller4.setLooping(true);
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
    _controller3.dispose();
    _controller2.dispose();
    _controller4.dispose();
  }

  int index = 0;

  Widget showScreen(Size size) {
    switch (index) {
      case 0:
        // return Container();
        return SizedBox.expand(
            child: FittedBox(
                fit: BoxFit.cover,
                child: Container(
                  height: 1000,
                  width: 1000,
                  child: VideoPlayer(_controller4),
                )));
        break;
      case 1:
        return SizedBox.expand(
          child: FittedBox(
              fit: BoxFit.cover,
              child: Container(
                  width: _controller.value.size.width,
                  height: _controller.value.size.height,
                  child: VideoPlayer(_controller))),
        );
        break;
      case 2:
        return SizedBox.expand(
          child: FittedBox(
              fit: BoxFit.cover,
              child: Container(
                  width: _controller2.value.size.height,
                  height: _controller2.value.size.height,
                  child: VideoPlayer(_controller2))),
        );
        break;
      case 3:
        return SizedBox.expand(
          child: FittedBox(
              fit: BoxFit.cover,
              child: Container(
                  width: _controller3.value.size.width,
                  height: _controller3.value.size.height,
                  child: VideoPlayer(_controller3))),
        );
        break;

      default:
        return Container();
    }
  }

  Widget botText() {
    switch (index) {
      case 0:
        return Container(
          alignment: Alignment.bottomRight,
          padding: EdgeInsets.fromLTRB(0, 0, 30, 15),
          child: myText("Hover headings to play!", Colors.grey[200], 12),
        );
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
        break;
      case 2:
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
        break;
      default:
        return Container(
          alignment: Alignment.bottomRight,
          padding: EdgeInsets.fromLTRB(0, 0, 30, 15),
          child: myText("Hover headings to play!", Colors.grey[200], 12),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    _controller4.play();
    Size screensize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff03030F),
      body: WebScrollbar(
        color: Colors.yellow,
        backgroundColor: Colors.transparent,
        width: 10,
        heightFraction: 0.3,
        controller: _scrollController,
        child: SingleChildScrollView(
          controller: _scrollController,
          physics: ClampingScrollPhysics(),
          child: Column(
            children: [
              Container(
                height: screensize.height,
                width: screensize.width,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    showScreen(screensize),
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
                                child: myText(
                                    "Harmanjit Singh", Colors.grey[200], 20),
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    NavbarItem(0, "Projects", Icons.work),
                                    NavbarItem(
                                        1, "Achievements", Icons.emoji_events),
                                    NavbarItem(
                                        2, "About Me!", Icons.emoji_emotions),
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
                                                index = 3;

                                                _controller3.play();
                                              });

                                              break;
                                            case false:
                                              {
                                                setState(() {
                                                  _controller3.pause();
                                                  index = 0;
                                                });
                                              }
                                              break;
                                            default:
                                          }
                                        });
                                      },
                                      onTap: () {},
                                      child: headText(
                                          "Applications.", Colors.white, 50),
                                    ),
                                    SizedBox(width: 15),
                                    InkWell(
                                      onHover: (val) {
                                        // _controller.play();
                                        setState(() {
                                          switch (val) {
                                            case true:
                                              setState(() {
                                                index = 2;

                                                _controller2.play();
                                              });

                                              break;
                                            case false:
                                              {
                                                setState(() {
                                                  _controller2.pause();
                                                  index = 0;
                                                });
                                              }
                                              break;
                                            default:
                                          }
                                        });
                                      },
                                      onTap: () {},
                                      child: headText(
                                          "Backend.", Colors.white, 50),
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
                                      child: headText(
                                          "Designing.", Colors.white, 50),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(30, 0, 0, 20),
                                alignment: Alignment.bottomLeft,
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SocialIcon(LineAwesomeIcons.github, 0),
                                      SizedBox(height: 15),
                                      SocialIcon(LineAwesomeIcons.instagram, 1),
                                      SizedBox(height: 15),
                                      SocialIcon(LineAwesomeIcons.at, 2),
                                      SizedBox(height: 15),
                                      SocialIcon(LineAwesomeIcons.linkedin, 3),
                                      SizedBox(height: 15),
                                      SocialIcon(LineAwesomeIcons.archive, 4),
                                      SizedBox(height: 15),
                                      SocialIcon(LineAwesomeIcons.code, 5),
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
              ),
              Container(
                height: screensize.height,
                width: screensize.width,
                child: AboutSection(),
                color: Colors.yellow[600],
              ),
              Container(
                height: screensize.height,
                width: screensize.width,
                child: Carosel(),
                // color: Colors.yellow,
              ),
              Container(
                height: 200,
                width: screensize.width,
                color: Colors.white,
                child: Credits(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
