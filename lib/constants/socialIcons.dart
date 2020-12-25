import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

List _isHovering = [false, false, false, false];

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
  List _isHovering = [false, false, false, false,false];
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(80),
      splashColor: Colors.amber,
      splashFactory: InkRipple.splashFactory,
      // radius: 60,
      onHover: (val) {
        setState(() {
          _isHovering[widget.index] = val;
        });
      },
      onTap: () {},
      child: Padding(
        padding: EdgeInsets.all(1),
        child: Icon(
          widget.icon,
          size: 40,
          color:
              _isHovering[widget.index] ? Colors.amber : Colors.grey[200],
        ),
      ),
    );
  }
}
