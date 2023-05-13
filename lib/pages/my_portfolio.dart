import 'package:flutter/material.dart';
import 'package:sandhiya_portfolio/pages/about.dart';
import 'package:sandhiya_portfolio/state/app_state.dart';
import 'package:sandhiya_portfolio/theme/text_widget.dart';
import 'package:sandhiya_portfolio/theme/theme.dart';
import 'package:sandhiya_portfolio/utils/media_query.dart';
import 'package:sandhiya_portfolio/utils/navigation_drawer.dart' as drawer;
import 'package:sandhiya_portfolio/pages/home.dart';
import 'package:sandhiya_portfolio/pages/education.dart';
import 'package:sandhiya_portfolio/pages/experience.dart';
import 'package:sandhiya_portfolio/pages/footer.dart';
import 'package:sandhiya_portfolio/pages/skills.dart';
import '../constant/keys.dart';
import '../theme/index.dart';
import 'package:provider/provider.dart';

class MyPortfolio extends StatelessWidget {
  bool isMobile = false;
  late AppState appState;
  @override
  Widget build(BuildContext context) {
    isMobile = MediaQuery.of(context).size.width > 1000 ? false : true;
    appState = context.read<AppState>();
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            heading1(
                text: "Flutter Developer",
                color: Colors.black,
                appTheme: appTheme(fontFamily: FontFamily.semiBold)),
          ],
        ),
        actions: isMobile ? null : drawer.getnavItems(appState: appState),
      ),
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(32.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Wrap(
                alignment: WrapAlignment.spaceBetween,
                children: [
                  isMobile
                      ? Center(
                          child: Home(
                          key: aboutKey,
                        ))
                      : Home(
                          key: aboutKey,
                        ),
                  isMobile
                      ? Container()
                      : Image(
                          alignment: Alignment.centerRight,
                          width: getDeviceWidth(context) < 900
                              ? getDeviceWidth(context) * 0.9
                              : getDeviceWidth(context) < 1600
                                  ? getDeviceWidth(context) * 0.4
                                  : getDeviceWidth(context) * 0.3,
                          image: const AssetImage(
                              "assets/sandhiya_large_size.jpeg"),
                        ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Wrap(
                children: [
                  const About(),
                  Education(
                    key: educationKey,
                  ),
                ],
              ),
              const SizedBox(
                height: 100,
              ),
              Experience(
                key: experienceKey,
              ),
              const SizedBox(
                height: 100,
              ),
              Skills(
                key: skillKey,
              ),
              // Padding(
              //   padding: const EdgeInsets.all(32.0),
              //   child: Resume(
              //     key: resumeKey,
              //   ),
              // ),
              const SizedBox(
                height: 100,
              ),
              const Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
