import 'package:flutter/material.dart';
import 'package:sandhiya_portfolio/theme/index.dart';
import 'package:sandhiya_portfolio/theme/text_widget.dart';
import 'package:sandhiya_portfolio/theme/theme.dart';
import '../constant/keys.dart';

class NavItemList extends StatelessWidget {
  const NavItemList({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: navItems,
    );
  }
}

List<Widget> navItems = [
  Padding(
    padding: const EdgeInsets.all(8.0),
    child: ElevatedButton(
        onPressed: () {
          Scrollable.ensureVisible(aboutKey.currentContext!);
        },
        child: subtitle1(
            text: "Home",
            appTheme: appTheme(fontFamily: FontFamily.semiBold),
            color: Colors.blue)),
  ),
  Padding(
    padding: const EdgeInsets.all(8.0),
    child: ElevatedButton(
        onPressed: () {
          Scrollable.ensureVisible(educationKey.currentContext!);
        },
        child: subtitle1(
            text: "About",
            appTheme: appTheme(fontFamily: FontFamily.semiBold),
            color: Colors.blue)),
  ),
  Padding(
    padding: const EdgeInsets.all(8.0),
    child: ElevatedButton(
        onPressed: () {
          Scrollable.ensureVisible(experienceKey.currentContext!);
        },
        child: subtitle1(
            text: "Experience",
            appTheme: appTheme(fontFamily: FontFamily.semiBold),
            color: Colors.blue)),
  ),
  Padding(
    padding: const EdgeInsets.all(8.0),
    child: ElevatedButton(
        onPressed: () {
          Scrollable.ensureVisible(skillKey.currentContext!);
        },
        child: subtitle1(
            text: "Skills",
            appTheme: appTheme(fontFamily: FontFamily.semiBold),
            color: Colors.blue)),
  ),
  Padding(
    padding: const EdgeInsets.all(8.0),
    child: ElevatedButton(
        onPressed: () {
          Scrollable.ensureVisible(resumeKey.currentContext!);
        },
        child: subtitle1(
            text: "Resume",
            appTheme: appTheme(fontFamily: FontFamily.semiBold),
            color: Colors.blue)),
  ),
];
