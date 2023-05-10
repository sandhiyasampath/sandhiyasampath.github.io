import 'package:flutter/material.dart';
import 'package:sandhiya_portfolio/theme/text_widget.dart';
import 'package:timelines/timelines.dart';

import '../theme/index.dart';
import '../theme/theme.dart';

class Education extends StatelessWidget {
  const Education({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> description = [
      "Thiruvalluvar university,Vellore",
      "Uttara info solution,Bangalore"
    ];
    List<String> title = ["Bachelor of Science", "Java course"];
    List<String> date = ["2015 - 2018", "2019"];
    return LayoutBuilder(builder: (context, constrain) {
      return Container(
        margin: const EdgeInsets.only(
          top: 20.0,
        ),
        width: constrain.maxWidth < 900
            ? constrain.maxWidth * 0.9
            : constrain.maxWidth < 1600
                ? constrain.maxWidth * 0.5
                : constrain.maxWidth * 0.4,
        decoration: BoxDecoration(
          // color: Colors.white,
          borderRadius: BorderRadius.circular(
            20.0,
          ),
        ),
        padding: const EdgeInsets.all(30.0),
        // height: 700.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 64.0),
              child: heading2(
                text: "Education Background",
                appTheme: appTheme(fontFamily: FontFamily.bold),
                color: Colors.blue,
              ),
            ),
            const SizedBox(
              height: 32.0,
            ),
            Timeline.tileBuilder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              builder: TimelineTileBuilder.fromStyle(
                itemCount: title.length,
                contentsAlign: ContentsAlign.alternating,
                contentsBuilder: (context, index) {
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          subtitle1(
                            text: title[index],
                            appTheme: appTheme(fontFamily: FontFamily.bold),
                            color: Colors.black,
                          ),
                          subtitle1(
                            text: description[index],
                            appTheme: appTheme(),
                            color: Colors.black,
                          ),
                          subtitle1(
                            text: date[index],
                            appTheme: appTheme(fontFamily: FontFamily.semiBold),
                            color: Colors.blue,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      );
    });
  }
}
