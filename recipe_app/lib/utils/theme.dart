
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';


class Apptheme {
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.darkgrey,
    colorScheme: const ColorScheme.light(),
  );
  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.backgroundblue,
    colorScheme: const ColorScheme.dark(),
    textTheme: TextTheme(
      headline4: GoogleFonts.openSans(
          fontSize: 28, fontWeight: FontWeight.w800,color: AppColors.white),
      headline5: GoogleFonts.openSans(
          fontSize: 22, fontWeight: FontWeight.w400, color: AppColors.white,letterSpacing: 0.5,),
      headline6: GoogleFonts.openSans(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.15,
          color: AppColors.white),
      subtitle1: GoogleFonts.openSans(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.15,
          color: AppColors.white),
      subtitle2: GoogleFonts.openSans(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.1,
          color: AppColors.grey),
      bodyText1: GoogleFonts.openSans(
          fontSize: 18,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.5,
          color: AppColors.white),
      bodyText2: GoogleFonts.openSans(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.25,
          color: AppColors.white),
      button: GoogleFonts.openSans(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.5,
          color: AppColors.white),
      caption: GoogleFonts.openSans(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.4,
          color: AppColors.white),
      overline: GoogleFonts.openSans(
          fontSize: 10,
          fontWeight: FontWeight.w400,
          letterSpacing: 1.5,
          color: AppColors.white),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.backgroundblue,
      elevation: 0,
      toolbarTextStyle:GoogleFonts.openSans(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.15,
          color: AppColors.white),
      titleTextStyle: GoogleFonts.openSans(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.15,
          color: AppColors.white),
      centerTitle: true,
    ),
    bottomNavigationBarTheme:  const BottomNavigationBarThemeData(
      //selectedIconTheme: IconThemeData(size: 30),
      backgroundColor: AppColors.backgroundblue,
      type: BottomNavigationBarType.fixed,
      elevation: 5.0,
      selectedItemColor: AppColors.white,
      unselectedItemColor: AppColors.white,
      selectedLabelStyle:TextStyle(color: AppColors.backgroundblue, height: 1),
      unselectedLabelStyle:TextStyle(color: AppColors.grey, height: 1),
    ),
  );
}
