import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData get LightTheme {
    return ThemeData(
      brightness: Brightness.light,
      colorScheme: const ColorScheme.light(
        primary: Color.fromRGBO(0, 166, 82, 1),
        onPrimary: Color.fromRGBO(10, 10, 10, 1),
        onSecondary: Colors.black,
        onTertiary: Color(0xFF908F8F),
      ),
      appBarTheme: const AppBarTheme(backgroundColor: Color(0xFFF7F7FA)),
      textTheme: TextTheme(
        headlineLarge: GoogleFonts.poppins(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          // TODO: Make this color as variable
        ),
        bodyMedium: GoogleFonts.poppins(
          fontSize: 14,
          // TODO: Make this color as variable
        ),
        titleLarge:
            GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w500),
        titleMedium: GoogleFonts.poppins(),
        labelSmall: GoogleFonts.poppins(
          fontSize: 9,
        ),
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
        ),
      ),
      scaffoldBackgroundColor: const Color(0xFFF7F7FA),
      inputDecorationTheme: InputDecorationTheme(
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        hintStyle: GoogleFonts.poppins(
          fontWeight: FontWeight.w400,
          fontSize: 16,
        ),
      ),
    );
  }
}
