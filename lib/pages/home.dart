import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sandhiya_portfolio/theme/text_widget.dart';
import 'package:sandhiya_portfolio/theme/theme.dart';
import 'package:url_launcher/url_launcher.dart';
import '../theme/index.dart';
import '../utils/animated_contact_button.dart';
import '../utils/media_query.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isMobile = false;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constrains) {
      isMobile = MediaQuery.of(context).size.width > 1000 ? false : true;
      return FittedBox(
        child: Container(
          // color: Colors.green,
          padding: const EdgeInsets.all(24.0),
          width: getDeviceWidth(context) < 900
              ? getDeviceWidth(context) * 0.9
              : getDeviceWidth(context) < 1600
                  ? getDeviceWidth(context) * 0.5
                  : getDeviceWidth(context) * 0.4,
          child: Column(
              crossAxisAlignment: isMobile
                  ? CrossAxisAlignment.center
                  : CrossAxisAlignment.start,
              children: [
                isMobile
                    ? Image.asset(
                        "assets/sandhiya.png",
                        height: 156.0,
                      )
                    : Container(),
                FittedBox(
                  child: heading4(
                      text: "Sandhiya Sampath",
                      color: Colors.black,
                      maxLines: 1,
                      appTheme: appTheme(fontFamily: FontFamily.semiBold)),
                ),
                FittedBox(
                  child: heading2(
                      text: "Senior software developer",
                      color: Colors.blueGrey,
                      appTheme: appTheme(fontFamily: FontFamily.bold)),
                ),
                // Padding(
                //   padding: const EdgeInsets.symmetric(vertical: 4.0),
                //   child: body1(
                //       text:
                //           "I am a developer with four years of hands-on experience in developing and am looking for Flutter developer roles across India.",
                //       color: Colors.black,
                //       appTheme: appTheme()),
                // ),
                const SizedBox(
                  height: 32,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.mail,
                      color: Colors.blue,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: body1(
                          text: "anbu171298@gmail.com",
                          color: Colors.black,
                          appTheme: appTheme()),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.call,
                      color: Colors.blue,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: body1(
                          text: "+91 9025300894",
                          color: Colors.black,
                          appTheme: appTheme()),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.location_city,
                      color: Colors.blue,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: body1(
                          text: "Tiruvannamalai,Tamilnadu,India.",
                          color: Colors.black,
                          appTheme: appTheme()),
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
        ),
      );
    });
  }
}
