import 'package:flutter/material.dart';

import '../theme/index.dart';
import '../theme/text_widget.dart';
import '../theme/theme.dart';

class Experience extends StatefulWidget {
  const Experience({super.key});

  @override
  State<Experience> createState() => _ExperienceState();
}

class _ExperienceState extends State<Experience> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrain) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          heading3(
            text: "Proffesional Experience",
            appTheme: appTheme(fontFamily: FontFamily.bold),
            color: Colors.blue,
          ),
          const SizedBox(height: 50),
          Wrap(
            spacing: 50.0,
            children: [
              Container(
                width: constrain.maxWidth < 900
                    ? constrain.maxWidth * 0.9
                    : constrain.maxWidth < 1600
                        ? constrain.maxWidth * 0.5
                        : constrain.maxWidth * 0.4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    heading2(
                      text: "Exathought technology consulting private limitted",
                      appTheme: appTheme(fontFamily: FontFamily.semiBold),
                      color: Colors.blue,
                    ),
                    heading1(
                      text: "Senior software Engineer : May 2021 - Present",
                      appTheme: appTheme(fontFamily: FontFamily.bold),
                      color: Colors.blueGrey,
                    ),
                    const SizedBox(height: 32),
                    Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                        child: body1(
                            text:
                                "Advanced Flutter Proficiency: I have a deep understanding of the Flutter framework, including its core concepts, including widgets, layout, navigation, state management, providers, and proficient in building complex UIs, handling user interactions, and implementing animations and transitions. having a deep understanding of how to develop Flutter's architecture and how to leverage its features to build robust and responsive applications.",
                            appTheme: appTheme(),
                            color: Colors.black)),
                    Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                        child: body1(
                            text:
                                "Cross-Platform Expertise: Built cross-platform applications with a single code base using Flutter, targeting iOS, Android, web, and desktop platforms.",
                            appTheme: appTheme(),
                            color: Colors.black)),
                    Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                        child: body1(
                            text:
                                "Architecture and Design Patterns: Gained knowledge and practical experience with various software architectures and design patterns commonly used in Flutter development, such as MVC, MVVM, and Provider.",
                            appTheme: appTheme(),
                            color: Colors.black)),
                    Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                        child: body1(
                            text:
                                "Backend Integration: I integrated client apps with various third-party APIs, services, and databases to add functionality to Flutter applications. I have hands-on experience with RESTful APIs, authentication, and data storage to create seamless app experiences.",
                            appTheme: appTheme(),
                            color: Colors.black)),
                    Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                        child: body1(
                            text:
                                "good at debugging with Flutter debugging tools and techniques to identify and resolve issues efficiently.",
                            appTheme: appTheme(),
                            color: Colors.black)),
                    Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                        child: body1(
                            text:
                                "  Trained and mentored junior developers and engineers, teaching skills in [Area of expertise] and working to improve overonly top:bottom,top:team performance.Worked with project managers, developers, quality assurance and customers to resolve technical issues.",
                            appTheme: appTheme(),
                            color: Colors.black)),
                  ],
                ),
              ),
              Container(
                width: constrain.maxWidth < 900
                    ? constrain.maxWidth * 0.9
                    : constrain.maxWidth < 1600
                        ? constrain.maxWidth * 0.4
                        : constrain.maxWidth * 0.4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    heading2(
                      text: "Tata consultancy services",
                      appTheme: appTheme(fontFamily: FontFamily.semiBold),
                      color: Colors.blue,
                    ),
                    heading1(
                      text: "Coding Specialist : May 2019 - May 2021",
                      appTheme: appTheme(fontFamily: FontFamily.bold),
                      color: Colors.blueGrey,
                    ),
                    const SizedBox(height: 32),
                    Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                        child: body1(
                            text:
                                "Integrated additional functionalities into the mainframe in accordance with specified requirements by utilizing efficient queries and optimized indexing to add new products and improve performance.",
                            appTheme: appTheme(),
                            color: Colors.black)),
                    Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                        child: body1(
                            text:
                                "Worked in the OGRDS (One Global Reference Data System). This is a client marketing application for a centralized data management system that is used to store and manage reference data for an organization or industry in which I worked for a US country.",
                            appTheme: appTheme(),
                            color: Colors.black)),
                    Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                        child: body1(
                            text:
                                "I did five projects to change the existing rule and update the new rules for existing items in OGRDS using the mainframe.",
                            appTheme: appTheme(),
                            color: Colors.black)),
                    Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                        child: body1(
                            text:
                                "know about cross-coding, competitive category assignment, item coding, and image QA.",
                            appTheme: appTheme(),
                            color: Colors.black)),
                  ],
                ),
              ),
            ],
          ),
        ],
      );
    });
  }
}
