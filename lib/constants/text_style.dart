import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Text myText(String text, Color color, double size,
    {FontWeight weight = FontWeight.normal}) {
  return Text(
    text,
    style:
        GoogleFonts.poppins(fontSize: size, color: color, fontWeight: weight),
    textAlign: TextAlign.justify,
  );
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
          blurRadius: 3,
          offset: Offset(1.5, 1),
          color: Color(0xff242B2E),
        )
      ],
    ),
  );
}
