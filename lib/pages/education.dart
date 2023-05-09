import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

class Education extends StatelessWidget {
  const Education({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> description = [
      "10th grade from the government higher secondary school with 87%",
      "12th grade from Government higher secondary school with 87%",
      "Bachelor of Degree I perceived in Mathematics from Arignar Anna  Government Arts and Science college with 81% of marks were secured by me",
      "Percived java certification course from Uttara info solution"
    ];
    List<String> title = [
      "Secondary School",
      "Higher Secondary",
      "Bachelor of Science",
      "Java course"
    ];
    List<String> date = ["2013", "2013 - 2015", "2015 - 2018", "2019"];
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
          color: Colors.white,
          borderRadius: BorderRadius.circular(
            20.0,
          ),
        ),
        padding: const EdgeInsets.all(30.0),
        // height: 700.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Education",
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            //
            const SizedBox(
              height: 12.0,
            ),
            //
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
                          Text(
                            date[index],
                            style: const TextStyle(
                              fontSize: 12.0,
                              color: Colors.indigo,
                            ),
                          ),
                          Text(
                            title[index],
                            style: const TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            description[index],
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.grey.shade700,
                            ),
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
