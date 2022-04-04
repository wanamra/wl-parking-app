import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AText extends StatelessWidget {
  final String text;
  final double size;
  final Color color;
  final FontWeight weight;
  final double spacing;
  final TextDecoration decoration;
  final TextOverflow overflow;
  final TextAlign textAlign;

  AText(
    this.text, {
    this.size = 14,
    this.color = Colors.black87,
    this.weight = FontWeight.w400,
    this.spacing = 0.5,
    this.decoration = TextDecoration.none,
    this.overflow = TextOverflow.visible,
    this.textAlign = TextAlign.center,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow,
      style: GoogleFonts.nunito(
        color: color,
        fontSize: size,
        fontWeight: weight,
        letterSpacing: spacing,
        decoration: decoration,
      ),
      textAlign: textAlign,
    );
  }
}
