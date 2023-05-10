import 'package:flutter/material.dart';
import 'package:sandhiya_portfolio/theme/text_widget.dart';
import 'package:sandhiya_portfolio/theme/theme.dart';

import '../theme/index.dart';

class Skills extends StatelessWidget {
  const Skills({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 20.0,
      runSpacing: 20.0,
      alignment: WrapAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          alignment: Alignment.center,
          child: heading3(
              text: "My Skills",
              color: Colors.blue,
              appTheme: appTheme(fontFamily: FontFamily.semiBold)),
        ),
        //
        LayoutBuilder(builder: (context, constrain) {
          return Container(
            width: constrain.maxWidth < 900
                ? constrain.maxWidth * 0.9
                : ((constrain.maxWidth * 0.7) / 3),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0),
            ),
            padding: const EdgeInsets.all(28.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                heading1(
                    text: "Programming Langauges",
                    color: Colors.blueGrey,
                    appTheme: appTheme(fontFamily: FontFamily.semiBold)),
                const SizedBox(
                  height: 16,
                ),
                Wrap(
                  spacing: 8.0,
                  runSpacing: 8.0,
                  children: [
                    Chip(
                      label: body1(
                          text: "Dart",
                          color: Colors.black,
                          appTheme: appTheme()),
                      labelStyle: const TextStyle(
                        color: Colors.indigo,
                      ),
                      side: const BorderSide(
                        color: Colors.indigo,
                      ),
                      backgroundColor: Colors.white,
                    ),
                    Chip(
                      label: body1(
                          text: "Java",
                          color: Colors.black,
                          appTheme: appTheme()),
                      labelStyle: const TextStyle(
                        color: Colors.indigo,
                      ),
                      side: const BorderSide(
                        color: Colors.indigo,
                      ),
                      backgroundColor: Colors.white,
                    ),
                    Chip(
                      label: body1(
                          text: "Express js",
                          color: Colors.black,
                          appTheme: appTheme()),
                      labelStyle: const TextStyle(
                        color: Colors.indigo,
                      ),
                      side: const BorderSide(
                        color: Colors.indigo,
                      ),
                      backgroundColor: Colors.white,
                    ),
                  ],
                ),
              ],
            ),
          );
        }),
        //
        //
        LayoutBuilder(builder: (context, constrain) {
          return Container(
            width: constrain.maxWidth < 900
                ? constrain.maxWidth * 0.9
                : ((constrain.maxWidth * 0.7) / 3),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0),
            ),
            padding: const EdgeInsets.all(28.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                heading1(
                    text: "Frameworks",
                    color: Colors.blueGrey,
                    appTheme: appTheme(fontFamily: FontFamily.semiBold)),
                const SizedBox(
                  height: 16,
                ),
                Wrap(
                  spacing: 8.0,
                  runSpacing: 8.0,
                  children: [
                    Chip(
                      label: body1(
                          text: "Flutter",
                          color: Colors.black,
                          appTheme: appTheme()),
                      labelStyle: const TextStyle(
                        color: Colors.indigo,
                      ),
                      side: const BorderSide(
                        color: Colors.indigo,
                      ),
                      backgroundColor: Colors.white,
                    ),
                    Chip(
                      label: body1(
                          text: "React Native",
                          color: Colors.black,
                          appTheme: appTheme()),
                      labelStyle: const TextStyle(
                        color: Colors.indigo,
                      ),
                      side: const BorderSide(
                        color: Colors.indigo,
                      ),
                      backgroundColor: Colors.white,
                    ),
                    Chip(
                      label: body1(
                          text: "Django",
                          color: Colors.black,
                          appTheme: appTheme()),
                      labelStyle: const TextStyle(
                        color: Colors.indigo,
                      ),
                      side: const BorderSide(
                        color: Colors.indigo,
                      ),
                      backgroundColor: Colors.white,
                    ),
                  ],
                ),
              ],
            ),
          );
        }),
        //
        //
        LayoutBuilder(builder: (context, constrain) {
          return Container(
            width: constrain.maxWidth < 900
                ? constrain.maxWidth * 0.9
                : ((constrain.maxWidth * 0.7) / 3),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0),
            ),
            padding: const EdgeInsets.all(28.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                heading1(
                    text: "Other Tools",
                    color: Colors.blueGrey,
                    appTheme: appTheme(fontFamily: FontFamily.semiBold)),
                const SizedBox(
                  height: 16,
                ),
                Wrap(
                  spacing: 8.0,
                  runSpacing: 8.0,
                  children: [
                    Chip(
                      label: body1(
                          text: "Mongo DB",
                          color: Colors.black,
                          appTheme: appTheme()),
                      labelStyle: const TextStyle(
                        color: Colors.indigo,
                      ),
                      side: const BorderSide(
                        color: Colors.indigo,
                      ),
                      backgroundColor: Colors.white,
                    ),
                    Chip(
                      label: body1(
                          text: "My SQL",
                          color: Colors.black,
                          appTheme: appTheme()),
                      labelStyle: const TextStyle(
                        color: Colors.indigo,
                      ),
                      side: const BorderSide(
                        color: Colors.indigo,
                      ),
                      backgroundColor: Colors.white,
                    ),
                    Chip(
                      label: body1(
                          text: "Git",
                          color: Colors.black,
                          appTheme: appTheme()),
                      labelStyle: const TextStyle(
                        color: Colors.indigo,
                      ),
                      side: const BorderSide(
                        color: Colors.indigo,
                      ),
                      backgroundColor: Colors.white,
                    ),
                  ],
                ),
              ],
            ),
          );
        }),
        //
      ],
    );
  }
}
