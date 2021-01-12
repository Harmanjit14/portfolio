import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class NavbarItem extends StatefulWidget {
  int index;
  String text;
  var icon;
  double jump;
  int duration;
  ScrollController _controller;
  NavbarItem(int index, String text, var icon, ScrollController obj,
      double jump, int duration) {
    this.index = index;
    this.text = text;
    this.icon = icon;
    this._controller = obj;
    this.jump = jump;
    this.duration = duration;
  }
  @override
  _NavbarItemState createState() => _NavbarItemState();
}

class _NavbarItemState extends State<NavbarItem> {
  List _isHovering = [false, false, false, false];
  @override
  Widget build(BuildContext context) {
    Color hoverColor = Colors.yellow;
    return Container(
      child: InkWell(
        // hoverColor: Colors.white,
        borderRadius: BorderRadius.circular(40),
        splashColor: hoverColor,
        splashFactory: InkRipple.splashFactory,
        // radius: 60,
        onHover: (val) {
          setState(() {
            _isHovering[widget.index] = val;
          });
        },
        onTap: () {
          setState(() {
            print(widget.text);
            widget._controller.animateTo(widget.jump,
                duration: Duration(milliseconds: widget.duration),
                curve: Curves.ease);
          });
        },
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Row(
            children: [
              Icon(
                widget.icon,
                color:
                    _isHovering[widget.index] ? hoverColor : Colors.grey[200],
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                widget.text,
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: _isHovering[widget.index]
                        ? hoverColor
                        : Colors.grey[200],
                    // shadows: <Shadow>[
                    //   Shadow(
                    //       blurRadius: 1,
                    //       color: Colors.black,
                    //       offset: Offset(0.5, 0.5))
                    // ]
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
