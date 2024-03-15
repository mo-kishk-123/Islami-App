import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemData {
  static const Color primaryColor = Color(0xFFB7935F);
  static const Color blackColor = Colors.black;
  static const Color yellowColor = Colors.amber;

  static ThemeData lightThem = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    brightness: Brightness.light,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Color(0xFFB7935F),
      showSelectedLabels: true,
      showUnselectedLabels: false,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.white,
      selectedLabelStyle: TextStyle(fontSize: 15),
      unselectedIconTheme: IconThemeData(
        size: 30,
      ),
      selectedIconTheme: IconThemeData(
        size: 25,
      ),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      shadowColor: Colors.transparent,
      titleTextStyle: GoogleFonts.elMessiri(
        color: Color(0xFF242424),
        fontSize: 25,
        fontWeight: FontWeight.w700,
      ),
      iconTheme: IconThemeData(
        color: Colors.black54,
        size: 30,
      ),
    ),
    textTheme: TextTheme(
      bodySmall: GoogleFonts.elMessiri(
        fontSize: 15,
        color: Colors.black,
        fontWeight: FontWeight.w500,
      ),
      bodyMedium: GoogleFonts.elMessiri(
        fontSize: 20,
        color: Colors.black,
        fontWeight: FontWeight.w600,
      ),
      bodyLarge: GoogleFonts.elMessiri(
        fontSize: 25,
        color: Colors.black,
        fontWeight: FontWeight.w700,
      ),
    ),
  );

  static ThemeData darkThem = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    brightness: Brightness.light,
    bottomSheetTheme: BottomSheetThemeData(backgroundColor: Colors.black),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Color(0xFF141A2E),
      showSelectedLabels: true,
      showUnselectedLabels: false,
      selectedItemColor: Color(0xFFFACC1D),
      unselectedItemColor: Colors.white,
      selectedLabelStyle: TextStyle(
        fontSize: 15,
        color: Color(0xFFFACC1D),
      ),
      unselectedIconTheme: IconThemeData(
        size: 30,
      ),
      selectedIconTheme: IconThemeData(
        size: 25,
      ),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      shadowColor: Colors.transparent,
      titleTextStyle: GoogleFonts.elMessiri(
        color: Color(0xFFF8F8F8),
        fontSize: 25,
        fontWeight: FontWeight.w700,
      ),
      iconTheme: IconThemeData(
        color: Colors.white,
        size: 30,
      ),
    ),
    textTheme: TextTheme(
      bodySmall: GoogleFonts.elMessiri(
        fontSize: 15,
        color: Color(0xFFFACC1D),
        fontWeight: FontWeight.w500,
      ),
      bodyMedium: GoogleFonts.elMessiri(
        fontSize: 20,
        color: Color(0xFFFACC1D),
        fontWeight: FontWeight.w600,
      ),
      bodyLarge: GoogleFonts.elMessiri(
        fontSize: 25,
        color: Color(0xFFFACC1D),
        fontWeight: FontWeight.w700,
      ),
    ),
  );
}
