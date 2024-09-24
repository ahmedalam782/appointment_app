import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static const Color primaryColor = Color(0xff247CFF);
  static const Color white = Color(0xffFFFFFF);
  static const Color black = Color(0xff161616);
  static const Color grey = Color(0xff7A7A7A);
  static const Color red=Color(0xffFF4C5E);
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: white,
    appBarTheme: AppBarTheme(
      backgroundColor: white,
      foregroundColor: black,
      titleTextStyle: GoogleFonts.inter(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: black,
      ),
    ),
    textTheme: TextTheme(
      headlineLarge: GoogleFonts.inter(
        fontSize: 40,
        fontWeight: FontWeight.w400,
        color: black,
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: white,
      selectedItemColor: primaryColor,
      unselectedItemColor: black,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      elevation: 0,
    ),
  );
}
