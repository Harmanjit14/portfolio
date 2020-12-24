import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Text myText(String text, Color color, double size) {
  return Text(text, style: GoogleFonts.poppins(fontSize: size, color: color));
}

Text headText(String text, Color color, double size) {
  return Text(
    text,
    style: GoogleFonts.poppins(
      fontSize: size,
      color: color,
      fontWeight: FontWeight.bold,
      shadows: <Shadow>[
        Shadow(
          blurRadius: 5,
          offset: Offset(1.5, 1),
          color: Colors.black,
        )
      ],
    ),
  );
}
