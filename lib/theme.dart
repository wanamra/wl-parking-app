import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {

  ThemeData themeData() {
    Color textColor = Color(0xff4C5270);

    return ThemeData(
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        titleTextStyle: GoogleFonts.nunito(
          color: textColor,
          fontSize: 20,
          fontWeight: FontWeight.w600,
          letterSpacing: 0.6,
        ),
        toolbarTextStyle: TextStyle(
          color: textColor,
        ),
        actionsIconTheme: IconThemeData(
          color: textColor,
        ),
        iconTheme: IconThemeData(
          color: textColor,
        ),
      ),
      primaryColor: Color(0xff6C63FF),
    );
  }
}
