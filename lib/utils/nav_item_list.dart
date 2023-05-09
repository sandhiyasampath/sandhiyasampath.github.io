import 'package:flutter/material.dart';
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
        child: Text("Home")),
  ),
  Padding(
    padding: const EdgeInsets.all(8.0),
    child: ElevatedButton(
        onPressed: () {
          Scrollable.ensureVisible(experienceKey.currentContext!);
        },
        child: Text("Experience")),
  ),
  Padding(
    padding: const EdgeInsets.all(8.0),
    child: ElevatedButton(
        onPressed: () {
          Scrollable.ensureVisible(skillKey.currentContext!);
        },
        child: Text("Skills")),
  ),
  Padding(
    padding: const EdgeInsets.all(8.0),
    child: ElevatedButton(
        onPressed: () {
          Scrollable.ensureVisible(resumeKey.currentContext!);
        },
        child: Text("Resume")),
  ),
  Padding(
    padding: const EdgeInsets.all(8.0),
    child: ElevatedButton(
        onPressed: () {
          Scrollable.ensureVisible(educationKey.currentContext!);
        },
        child: Text("Education")),
  ),
];
