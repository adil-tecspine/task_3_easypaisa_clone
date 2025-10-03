import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppThemes {
  static final ThemeData lightTheme = ThemeData(
    primarySwatch: Colors.blue,
    brightness: Brightness.light,
    textTheme: GoogleFonts.robotoTextTheme(ThemeData.light().textTheme),
  );

  static final ThemeData darkTheme = ThemeData(
    primarySwatch: Colors.green,
    brightness: Brightness.dark,
    textTheme: GoogleFonts.robotoTextTheme(ThemeData.dark().textTheme),
  );
}
