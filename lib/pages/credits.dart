import 'package:flutter/material.dart';
import 'package:portfolio/constants/text_style.dart';

class Credits extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          myText("Made with Love", Colors.white, 30),
          SizedBox(width: 5),
          Icon(
            Icons.favorite,
            size: 30,
            color: Colors.white,
          ),
          SizedBox(width: 5),
          myText("and Coffee", Colors.white, 30),
          SizedBox(width: 5),
          Icon(
            Icons.local_cafe,
            size: 30,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
