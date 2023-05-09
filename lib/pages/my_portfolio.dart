// import 'package:dev_portfolio/components/about.dart';
// import 'package:dev_portfolio/components/education.dart';
// import 'package:dev_portfolio/components/footer.dart';
// import 'package:dev_portfolio/components/skills.dart';
import 'package:flutter/material.dart';
import 'package:sandhiya_portfolio/utils/nav_item_list.dart';
import 'package:sandhiya_portfolio/pages/about.dart';
import 'package:sandhiya_portfolio/pages/education.dart';
import 'package:sandhiya_portfolio/pages/experience.dart';
import 'package:sandhiya_portfolio/pages/footer.dart';
import 'package:sandhiya_portfolio/pages/resume.dart';
import 'package:sandhiya_portfolio/pages/skills.dart';

import '../constant/keys.dart';

class MyPortfolio extends StatefulWidget {
  const MyPortfolio({Key? key}) : super(key: key);

  @override
  State<MyPortfolio> createState() => _MyPortfolioState();
}

class _MyPortfolioState extends State<MyPortfolio> {
  bool isMobile = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    isMobile = MediaQuery.of(context).size.width > 700 ? false : true;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/sandhiya.png"),

            // fit: BoxFit.cover,
          ),
          color: Colors.white),
      child: Scaffold(
        appBar: AppBar(
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text("Flutter Developer"),
              Text(
                "Sandhiya Sampath",
                style: TextStyle(fontSize: 11),
              ),
            ],
          ),
          actions: isMobile ? null : navItems,
        ),
        drawer: isMobile
            ? const Drawer(
                child: NavItemList(),
              )
            : null,
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Wrap(
                  alignment: WrapAlignment.spaceAround,
                  spacing: 150.0,
                  // runAlignment: WrapAlignment.start,
                  children: [
                    About(
                      key: aboutKey,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(32.0),
                      child: Education(
                        key: educationKey,
                      ),
                    ),

                    // isMobile
                    //     ? Container()
                    //     : Image(image: AssetImage("assets/sandhiya.png")),
                  ],
                ),
                // Education(
                //   key: educationKey,
                // ),

                Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Experience(
                    key: experienceKey,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Skills(
                    key: skillKey,
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.all(32.0),
                //   child: Resume(
                //     key: resumeKey,
                //   ),
                // ),

                const Footer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
