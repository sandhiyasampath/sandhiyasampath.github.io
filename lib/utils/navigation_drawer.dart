import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sandhiya_portfolio/state/app_state.dart';
import 'package:sandhiya_portfolio/theme/index.dart';
import 'package:sandhiya_portfolio/theme/text_widget.dart';
import 'package:sandhiya_portfolio/theme/theme.dart';
import '../constant/keys.dart';

class NavigationDrawer extends StatelessWidget {
  // NavItemList({super.key});
  late AppState appState;
  @override
  Widget build(BuildContext context) {
    appState = context.read<AppState>();
    return appState.showDrawer
        ? Drawer(
            child: ListView(
              children: getnavItems(appState: appState),
            ),
          )
        : Container();
  }
}

List<Widget> getnavItems({required AppState appState}) {
  return [
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
          onPressed: () {
            Scrollable.ensureVisible(aboutKey.currentContext!);
            appState.toggleDrawer();
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
            appState.toggleDrawer();
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
            appState.toggleDrawer();
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
            appState.toggleDrawer();
          },
          child: subtitle1(
              text: "Skills",
              appTheme: appTheme(fontFamily: FontFamily.semiBold),
              color: Colors.blue)),
    ),
  ];
}
