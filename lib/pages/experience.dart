import 'package:flutter/material.dart';

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
          const Text(
            "Proffesional Experience",
            style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w600,
                color: Colors.blue),
          ),
          const Divider(),
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
                  children: const [
                    Text(
                      "Exathought technology consulting private limitted",
                      style: TextStyle(fontSize: 22.0, color: Colors.blue),
                    ),
                    Text(
                      "Senior software Engineer : May 2021 - Present",
                      style: TextStyle(
                          fontSize: 18.0,
                          // fontWeight: FontWeight.w600,
                          color: Colors.indigo),
                    ),
                    Padding(
                        padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                        child: Text(
                            "Advanced Flutter Proficiency: I have a deep understanding of the Flutter framework, including its core concepts, including widgets, layout, navigation, state management, providers, and proficient in building complex UIs, handling user interactions, and implementing animations and transitions. having a deep understanding of how to develop Flutter's architecture and how to leverage its features to build robust and responsive applications.",
                            style: TextStyle(fontSize: 16))),
                    Padding(
                        padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                        child: Text(
                            "Cross-Platform Expertise: Built cross-platform applications with a single code base using Flutter, targeting iOS, Android, web, and desktop platforms.",
                            style: TextStyle(fontSize: 16))),
                    Padding(
                        padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                        child: Text(
                            "Architecture and Design Patterns: Gained knowledge and practical experience with various software architectures and design patterns commonly used in Flutter development, such as MVC, MVVM, and Provider.",
                            style: TextStyle(fontSize: 16))),
                    Padding(
                        padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                        child: Text(
                            "Backend Integration: I integrated client apps with various third-party APIs, services, and databases to add functionality to Flutter applications. I have hands-on experience with RESTful APIs, authentication, and data storage to create seamless app experiences.",
                            style: TextStyle(fontSize: 16))),
                    Padding(
                        padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                        child: Text(
                            "good at debugging with Flutter debugging tools and techniques to identify and resolve issues efficiently.",
                            style: TextStyle(fontSize: 16))),
                    Padding(
                        padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                        child: Text(
                            "  Trained and mentored junior developers and engineers, teaching skills in [Area of expertise] and working to improve overonly top:bottom,top:team performance.Worked with project managers, developers, quality assurance and customers to resolve technical issues.",
                            style: TextStyle(fontSize: 16))),
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
                  children: const [
                    Text(
                      "Tata consultancy services",
                      style: TextStyle(fontSize: 22.0, color: Colors.blue),
                    ),
                    Text(
                      "Coding Specialist : May 2019 - May 2021",
                      style: TextStyle(
                          fontSize: 18.0,
                          // fontWeight: FontWeight.w600,
                          color: Colors.indigo),
                    ),
                    Padding(
                        padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                        child: Text(
                            "Integrated additional functionalities into the mainframe in accordance with specified requirements by utilizing efficient queries and optimized indexing to add new products and improve performance.",
                            style: TextStyle(fontSize: 16))),
                    Padding(
                        padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                        child: Text(
                            "Worked in the OGRDS (One Global Reference Data System). This is a client marketing application for a centralized data management system that is used to store and manage reference data for an organization or industry in which I worked for a US country.",
                            style: TextStyle(fontSize: 16))),
                    Padding(
                        padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                        child: Text(
                            "I did five projects to change the existing rule and update the new rules for existing items in OGRDS using the mainframe.",
                            style: TextStyle(fontSize: 16))),
                    Padding(
                        padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                        child: Text(
                            "know about cross-coding, competitive category assignment, item coding, and image QA.",
                            style: TextStyle(fontSize: 16))),
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
