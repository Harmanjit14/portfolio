import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:url_launcher/url_launcher.dart';

// List _isHovering = [false, false, false, false, false, false];

class SocialIcon extends StatefulWidget {
  var icon;
  int index;
  SocialIcon(var icon, int index) {
    this.icon = icon;
    this.index = index;
  }
  @override
  _SocialIconState createState() => _SocialIconState();
}

class _SocialIconState extends State<SocialIcon> {
  List _isHovering = [false, false, false, false, false, false];

  void ontap(int index) async {
    switch (index) {
      case 0:
        await launch("https://github.com/Harmanjit14");
        break;
      case 1:
        await launch("https://www.instagram.com/harmanjit_14/");
        break;
      case 2:
        Alert(
          context: context,
          type: AlertType.info,
          title: "Mail me here",
          desc: "harmanjit140500@gmail.com",
          buttons: [
            DialogButton(
              child: Text(
                "Sure!",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onPressed: () => Navigator.pop(context),
              width: 120,
            )
          ],
        ).show();
        break;
      case 3:
        await launch("https://www.linkedin.com/in/harmanjit-singh-1405/");
        break;
      case 4:
        await launch("https://devfolio.co/@harmanjit_14");
        break;
      case 5:
        await launch("https://leetcode.com/Harmanjit14/");
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    Color hoverColor = Colors.yellow[400];
    return InkWell(
      borderRadius: BorderRadius.circular(80),
      splashColor: hoverColor,
      splashFactory: InkRipple.splashFactory,
      // radius: 60,
      onHover: (val) {
        setState(() {
          _isHovering[widget.index] = val;
        });
      },
      onTap: () {
        ontap(widget.index);
      },
      child: Padding(
        padding: EdgeInsets.all(1),
        child: Icon(
          widget.icon,
          size: 40,
          color: _isHovering[widget.index] ? hoverColor : Colors.grey[200],
        ),
      ),
    );
  }
}
