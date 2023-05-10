import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Contains all the functions to get the UI components

Text heading6(
    {required String text,
    required Color color,
    required ThemeData appTheme,
    textAlignment = TextAlign.start,
    textOverFlow = TextOverflow.ellipsis,
    maxLines = 100}) {
  return _getStyledText(
      textAlignment: textAlignment,
      maxLines: maxLines,
      textOverFlow: textOverFlow,
      text: text,
      textStyle: appTheme.textTheme.displayLarge,
      color: color);
}

Text heading5(
    {required String text,
    required Color color,
    required ThemeData appTheme,
    textAlignment = TextAlign.start,
    textOverFlow = TextOverflow.ellipsis,
    maxLines = 100}) {
  return _getStyledText(
      textAlignment: textAlignment,
      maxLines: maxLines,
      textOverFlow: textOverFlow,
      text: text,
      textStyle: appTheme.textTheme.displayMedium,
      color: color);
}

Text heading4(
    {required String text,
    required Color color,
    required ThemeData appTheme,
    textAlignment = TextAlign.start,
    textOverFlow = TextOverflow.ellipsis,
    maxLines = 100}) {
  return _getStyledText(
      textAlignment: textAlignment,
      maxLines: maxLines,
      textOverFlow: textOverFlow,
      text: text,
      textStyle: appTheme.textTheme.displaySmall,
      color: color);
}

Text heading3(
    {required String text,
    required Color color,
    required ThemeData appTheme,
    textAlignment = TextAlign.start,
    textOverFlow = TextOverflow.ellipsis,
    maxLines = 100}) {
  return _getStyledText(
      textAlignment: textAlignment,
      maxLines: maxLines,
      textOverFlow: textOverFlow,
      text: text,
      textStyle: appTheme.textTheme.headlineLarge,
      color: color);
}

Text heading2(
    {required String text,
    required Color color,
    required ThemeData appTheme,
    textAlignment = TextAlign.start,
    textOverFlow = TextOverflow.ellipsis,
    maxLines = 100}) {
  return _getStyledText(
      textAlignment: textAlignment,
      maxLines: maxLines,
      textOverFlow: textOverFlow,
      text: text,
      textStyle: appTheme.textTheme.headlineMedium,
      color: color);
}

Text heading1(
    {required String text,
    required Color color,
    required ThemeData appTheme,
    textAlignment = TextAlign.start,
    textOverFlow = TextOverflow.ellipsis,
    maxLines = 100}) {
  return _getStyledText(
      textAlignment: textAlignment,
      maxLines: maxLines,
      textOverFlow: textOverFlow,
      text: text,
      textStyle: appTheme.textTheme.headlineSmall,
      color: color);
}

Text addressFormat(
    {required String text,
    required Color color,
    required ThemeData appTheme,
    textAlignment = TextAlign.start,
    textOverFlow = TextOverflow.ellipsis,
    maxLines = 100}) {
  return _getStyledText(
      textAlignment: textAlignment,
      maxLines: maxLines,
      textOverFlow: textOverFlow,
      text: text,
      textStyle: appTheme.textTheme.titleMedium,
      color: color);
}

Text subtitle1(
    {required String text,
    required Color color,
    required ThemeData appTheme,
    textAlignment = TextAlign.start,
    textOverFlow = TextOverflow.ellipsis,
    maxLines = 100}) {
  return _getStyledText(
      textAlignment: textAlignment,
      maxLines: maxLines,
      textOverFlow: textOverFlow,
      text: text,
      textStyle: appTheme.textTheme.titleMedium,
      color: color);
}

Text subtitle2(
    {required String text,
    required Color color,
    required ThemeData appTheme,
    textAlignment = TextAlign.start,
    textOverFlow = TextOverflow.ellipsis,
    maxLines = 100}) {
  return _getStyledText(
      textAlignment: textAlignment,
      maxLines: maxLines,
      textOverFlow: textOverFlow,
      text: text,
      textStyle: appTheme.textTheme.titleSmall,
      color: color);
}

Text body2(
    {required String text,
    required Color color,
    required ThemeData appTheme,
    textAlignment = TextAlign.start,
    textOverFlow = TextOverflow.ellipsis,
    maxLines = 100}) {
  return _getStyledText(
      textAlignment: textAlignment,
      maxLines: maxLines,
      textOverFlow: textOverFlow,
      text: text,
      textStyle: appTheme.textTheme.bodySmall,
      color: color);
}

Text body1(
    {required String text,
    required color,
    required ThemeData appTheme,
    textAlignment = TextAlign.start,
    textOverFlow = TextOverflow.ellipsis,
    maxLines = 100}) {
  return _getStyledText(
      textAlignment: textAlignment,
      maxLines: maxLines,
      textOverFlow: textOverFlow,
      text: text,
      textStyle: appTheme.textTheme.bodyMedium,
      color: color);
}

Text caption(
    {required String text,
    required Color color,
    required ThemeData appTheme,
    textAlignment = TextAlign.start,
    textOverFlow = TextOverflow.ellipsis,
    maxLines = 100}) {
  return _getStyledText(
      textAlignment: textAlignment,
      maxLines: maxLines,
      textOverFlow: textOverFlow,
      text: text,
      textStyle: appTheme.textTheme.labelMedium,
      color: color);
}

Text overline(
    {required String text,
    required Color color,
    required ThemeData appTheme,
    textAlignment = TextAlign.start,
    textOverFlow = TextOverflow.ellipsis,
    maxLines = 100}) {
  return _getStyledText(
      textAlignment: textAlignment,
      maxLines: maxLines,
      textOverFlow: textOverFlow,
      text: text,
      textStyle: appTheme.textTheme.labelSmall,
      color: color);
}

Text tableHeader(
    {required String text,
    required Color color,
    ThemeData? appTheme,
    textAlignment = TextAlign.justify,
    textOverFlow = TextOverflow.ellipsis,
    maxLines = 100}) {
  return _getStyledText(
      textAlignment: textAlignment,
      maxLines: maxLines,
      textOverFlow: textOverFlow,
      text: text,
      textStyle: appTheme?.textTheme.titleMedium ??
          TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold, color: color),
      color: color);
}

Text threeLineHeader({required String text, required Color color}) {
  return Text(
    text,
    overflow: TextOverflow.ellipsis,
    style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.bold, color: color),
  );
}

Text threeLineBody(
    {required String text, required Color color, TextStyle? textStyles}) {
  return Text(
    text,
    overflow: TextOverflow.ellipsis,
    style: textStyles ??
        TextStyle(fontSize: 11.0, fontWeight: FontWeight.normal, color: color),
  );
}

Text _getStyledText(
    {required text,
    required TextStyle? textStyle,
    required Color color,
    textAlignment = TextAlign.start,
    textOverFlow = TextOverflow.ellipsis,
    maxLines = 100}) {
  return Text(
    text,
    maxLines: maxLines,
    textAlign: textAlignment,
    overflow: textOverFlow,
    style: textStyle?.copyWith(
      color: color,
    ),
  );
}

// class TextStyles {
//   static var _headingFont = GoogleFonts.poppins;
//   static var _bodyFont = GoogleFonts.poppins;

//   static TextStyle button = _bodyFont(
//     //letterSpacing: 1.25,
//     fontSize: 14,
//     fontWeight: FontWeight.w500,
//   );

//   static TextStyle caption = _bodyFont(
//       // letterSpacing: 0.4,
//       fontSize: 12,
//       fontWeight: FontWeight.normal);

//   static TextStyle overline = _headingFont(
//       //letterSpacing: 1.5,
//       fontSize: 10,
//       fontWeight: FontWeight.normal);

//   static TextStyle body2 = _bodyFont(
//     // letterSpacing: 1.25,
//     fontSize: 14,
//     fontWeight: FontWeight.w500,
//   );

//   static TextStyle body1 = _headingFont(
//       // letterSpacing: 0.5,
//       fontSize: 16,
//       fontWeight: FontWeight.normal);

//   static TextStyle subtitle2 = _headingFont(
//       letterSpacing: 0.1, fontSize: 14, fontWeight: FontWeight.w500);

//   static TextStyle subtitle1 = _headingFont(
//       letterSpacing: 0.15, fontSize: 16, fontWeight: FontWeight.normal);

//   static TextStyle heading1 = _headingFont(
//       letterSpacing: -1.5, fontSize: 96, fontWeight: FontWeight.w300);

//   static TextStyle heading2 = _headingFont(
//       letterSpacing: -0.5, fontSize: 60, fontWeight: FontWeight.w300);

//   static TextStyle heading3 = _headingFont(
//       letterSpacing: 0.0, fontSize: 48, fontWeight: FontWeight.normal);

//   static TextStyle heading4 = _headingFont(
//       letterSpacing: 0.25, fontSize: 34, fontWeight: FontWeight.normal);

//   static TextStyle heading5 = _headingFont(
//       letterSpacing: 0.0, fontSize: 24, fontWeight: FontWeight.normal);

//   static TextStyle heading6 = _headingFont(
//       letterSpacing: 0.15, fontSize: 20, fontWeight: FontWeight.w500);
// }
