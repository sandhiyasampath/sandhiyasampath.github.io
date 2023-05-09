import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../utils/animated_contact_button.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constrains) {
      return Container(
        padding: EdgeInsets.all(24.0),
        width: constrains.maxWidth < 900
            ? constrains.maxWidth * 0.9
            : constrains.maxWidth < 1600
                ? constrains.maxWidth * 0.3
                : constrains.maxWidth * 0.2,
        child: Column(children: [
          Image.asset(
            "assets/sandhiya.png",
            height: 156.0,

            // color: Colors.white,
          ),
          const Text(
            "Sandhiya Sampath",
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              "I am a developer with four years of hands-on experience in developing and am looking for Flutter developer roles across India.",
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Icon(
                Icons.mail,
                color: Colors.blue,
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "anbu171298@gmail.com",
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Icon(
                Icons.call,
                color: Colors.blue,
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "+91 9025300894",
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Icon(
                Icons.location_city,
                color: Colors.blue,
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "175,Malaiyadivara Street,Nedungunam,\nTiruvannamalai,Tamilnadu(606807).",
                  textAlign: TextAlign.start,
                ),
              ),
            ],
          ),
          AnimatedContact(
            iconData: FontAwesomeIcons.github,
            title: "Github",
            subtitle: "sandhiyasampath",
            onTap: () async {
              await launch(
                  "https://github.com/sandhiyasampath?tab=repositories");
            },
          ),
          AnimatedContact(
            iconData: FontAwesomeIcons.linkedin,
            title: "Linkedin",
            subtitle: "Sandhiya Sampath",
            onTap: () async {
              await launch(
                  "https://www.linkedin.com/in/sandhiya-sampath-6a5b35220/");
            },
          ),
        ]),
      );
    });
  }
}
