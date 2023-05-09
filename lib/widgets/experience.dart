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
                      style: TextStyle(
                        fontSize: 22.0,
                        // fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "Senior software Engineer : May 2021 - Present",
                      style: TextStyle(
                          fontSize: 18.0,
                          // fontWeight: FontWeight.w600,
                          color: Colors.indigo),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                          "Having better expertise in the Flutter framework, including widgets, layout, navigation, state management, providers, and animations. having a deep understanding of how to develop Flutter's architecture and how to leverage its features to build robust and responsive applications.."),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                          "Built cross-platform applications with a single code base."),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                          "I integrated client apps with various third-party APIs, services, and databases to add functionality to Flutter applications. I have hands-on experience with RESTful APIs, authentication, and data storage to create seamless app experiences."),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                          "good at debugging with Flutter debugging tools and techniques to identify and resolve issues efficiently."),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                          "know about cross-coding, competitive category assignment, item coding, and image QA."),
                    ),
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
                      style: TextStyle(
                        fontSize: 22.0,
                        // fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "Coding Specialist : May 2019 - May 2021",
                      style: TextStyle(
                          fontSize: 18.0,
                          // fontWeight: FontWeight.w600,
                          color: Colors.indigo),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                          "Integrated additional functionalities into the mainframe in accordance with specified requirements by utilizing efficient queries and optimized indexing to add new products and improve performance."),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                          "Worked in the OGRDS (One Global Reference Data System). This is a client marketing application for a centralized data management system that is used to store and manage reference data for an organization or industry in which I worked for a US country."),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                          "I did five projects to change the existing rule and update the new rules for existing items in OGRDS using the mainframe."),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                          "know about cross-coding, competitive category assignment, item coding, and image QA."),
                    ),
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
