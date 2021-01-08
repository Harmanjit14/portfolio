import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
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
        alignment: Alignment.center,
        children: [
          SizedBox.expand(
            child: Image.asset(
              "assets/white.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Row(
            children: [
              Container(
                  margin: EdgeInsets.fromLTRB(50, 0, 20, 0),
                  child: headText("About Me", Colors.black, 50)),
              Expanded(
                  child: SingleChildScrollView(
                child: Container(
                  margin: EdgeInsets.fromLTRB(30, 0, 50, 0),
                  width: 400,
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Hello There!",
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          )),
                      myText(
                          "I am Harmanjit Singh. I am Full Stack-Developer cum UI/UX Designer. I am currently pursueing BTech in COE at Thapar Institute of Engineering and Technology, Patiala.",
                          Colors.black,
                          22,
                          weight: FontWeight.w500),
                      myText(
                          "I am currently working and ready to collaborate on projects based on Flutter and Django. I usually design UI's on Figma and Adobe Photoshop CC19. I am currently learning AWS.",
                          Colors.black,
                          22,
                          weight: FontWeight.w500),
                      myText(
                          "I currently live in Punjab, India and I am happy to work anywhere. My hobbies are swimming, gaming, traveling, badmintion, coding. I am always up to learn something new and create something better for the society",
                          Colors.black,
                          22,
                          weight: FontWeight.w500),
                    ],
                  ),
                ),
              ))
            ],
          ),
        ],
      ),
    );
  }
}
