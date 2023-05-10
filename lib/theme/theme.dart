import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData customThemeData({FontFamily fontFamily = FontFamily.regular}) {
  //semiBold = w600
  return ThemeData(
    textTheme: TextTheme(
      bodyMedium: TextStyle(
          //  height: 1.6,
          fontSize: 16,
          fontFamily: getBodyFontFamily(fontFamily: fontFamily)),
      bodySmall: TextStyle(
          // height: 1.6,
          fontFamily: getBodyFontFamily(fontFamily: fontFamily),
          fontSize: 13),
      titleMedium: TextStyle(
          // height: 1.6,
          fontSize: 16,
          fontFamily: getHeaderFontFamily(fontFamily: fontFamily)),
      titleSmall: TextStyle(
          // height: 1.6,
          fontSize: 13,
          fontFamily: getHeaderFontFamily(fontFamily: fontFamily)),
      displayLarge: TextStyle(
          // height: 1.6,
          fontSize: 83,
          fontFamily: getHeaderFontFamily(fontFamily: fontFamily)),
      displayMedium: TextStyle(
          //height: 1.6,
          fontSize: 69,
          fontFamily: getHeaderFontFamily(fontFamily: fontFamily)),
      displaySmall: TextStyle(
          //height: 1.6,
          fontSize: 48,
          fontFamily: getHeaderFontFamily(fontFamily: fontFamily)),
      headlineLarge: TextStyle(
          // height: 1.6,
          fontSize: 33,
          fontFamily: getHeaderFontFamily(fontFamily: fontFamily)),
      headlineMedium: TextStyle(
          // height: 1.6,
          fontFamily: getHeaderFontFamily(fontFamily: fontFamily),
          fontSize: 23),
      headlineSmall: TextStyle(
          // height: 1.6,
          fontFamily: getHeaderFontFamily(fontFamily: fontFamily),
          fontSize: 19),
      labelMedium: TextStyle(
          //height: 1.6,
          fontSize: 14,
          fontFamily: getHeaderFontFamily(fontFamily: fontFamily),
          color: const Color.fromARGB(255, 255, 255, 255)),
      labelSmall: TextStyle(
          //height: 1.6,
          fontFamily: getBodyFontFamily(fontFamily: fontFamily),
          fontSize: 11),
    ),
  );
}

enum FontFamily { regular, medium, semiBold, bold }

getBodyFontFamily({required FontFamily fontFamily}) {
  switch (fontFamily) {
    case FontFamily.regular:
      return GoogleFonts.poppins(fontWeight: FontWeight.w400).fontFamily!;
    case FontFamily.medium:
      return GoogleFonts.poppins(fontWeight: FontWeight.w500).fontFamily!;
    case FontFamily.semiBold:
      return GoogleFonts.poppins(fontWeight: FontWeight.w600).fontFamily!;
    case FontFamily.bold:
      return GoogleFonts.poppins(fontWeight: FontWeight.w700).fontFamily!;
    default:
      GoogleFonts.poppins(fontWeight: FontWeight.w400).fontFamily!;
  }
}

getHeaderFontFamily({required FontFamily fontFamily}) {
  switch (fontFamily) {
    case FontFamily.regular:
      return GoogleFonts.playfairDisplay(fontWeight: FontWeight.w300)
          .fontFamily!;
    case FontFamily.medium:
      return GoogleFonts.playfairDisplay(fontWeight: FontWeight.w400)
          .fontFamily!;
    case FontFamily.semiBold:
      return GoogleFonts.playfairDisplay(fontWeight: FontWeight.w500)
          .fontFamily!;
    case FontFamily.bold:
      return GoogleFonts.playfairDisplay(fontWeight: FontWeight.w600)
          .fontFamily!;
    default:
      GoogleFonts.playfairDisplay(fontWeight: FontWeight.w300).fontFamily!;
  }
}

class CustomerColorThemePalette {}
