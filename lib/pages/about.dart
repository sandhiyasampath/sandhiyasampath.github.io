import 'package:flutter/material.dart';
import 'package:sandhiya_portfolio/theme/index.dart';
import 'package:sandhiya_portfolio/theme/text_widget.dart';
import 'package:sandhiya_portfolio/theme/theme.dart';

import '../utils/media_query.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24.0),
      width: getDeviceWidth(context) < 900
          ? getDeviceWidth(context) * 0.9
          : getDeviceWidth(context) < 1600
              ? getDeviceWidth(context) * 0.3
              : getDeviceWidth(context) * 0.4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 24.0, bottom: 24.0),
            child: heading2(
                text: "About me",
                color: Colors.blue,
                appTheme: appTheme(fontFamily: FontFamily.semiBold)),
          ),
          body1(
              text:
                  "Experienced Flutter developer with a proven track record of designing, developing, and deploying high-quality cross-platform applications. Highly skilled in Dart programming language and well-versed in the Flutter framework.Collaborative and adaptable, I thrive in team environments, effectively communicating and coordinating with stakeholders to deliver successful projects. Continuously staying updated on the latest Flutter trends and best practices, ",
              color: Colors.blueGrey,
              appTheme: appTheme()),
          Padding(
            padding: const EdgeInsets.only(top: 16.0, bottom: 24.0),
            child: body1(
                text:
                    "I love reading books, and I find great joy travelling with friends.",
                color: Colors.blueGrey,
                appTheme: appTheme()),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: body1(
                text: "Key Skills:", color: Colors.blue, appTheme: appTheme()),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 8.0, bottom: 8.0),
            child: body1(
                text: "* Proficient in dart and java",
                color: Colors.blueGrey,
                appTheme: appTheme()),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 8.0, bottom: 8.0),
            child: body1(
                text: "* Expertise in Flutter framework,git,AWS,",
                color: Colors.blueGrey,
                appTheme: appTheme()),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 8.0, bottom: 8.0),
            child: body1(
                text: "* Strong problem-solving and analytical abilities",
                color: Colors.blueGrey,
                appTheme: appTheme()),
          ),
        ],
      ),
    );
  }
}
