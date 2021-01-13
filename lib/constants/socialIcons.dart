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
        await launch("https://github.com/gurleen-kaur1313");
        break;
      case 1:
        await launch("https://www.instagram.com/gurleen_dhillon_001/");
        break;
      case 2:
        Alert(
          context: context,
          type: AlertType.info,
          title: "Mail me here",
          desc: "gurleendhillonm1114@gmail.com",
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
        await launch("https://www.linkedin.com/in/gurleen-kaur-55884b1b4/");
        break;
      case 4:
        await launch("https://devfolio.co/@Gurleen2430");
        break;
      case 5:
        await launch("https://leetcode.com/gurleendhillonm1114/");
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
