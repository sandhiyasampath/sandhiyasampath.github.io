import 'package:flutter/material.dart';

class SkillRow extends StatelessWidget {
  List<String> skills;
  SkillRow({super.key, required this.skills});

  @override
  Widget build(BuildContext context) {
    List<String> d = ["SAAA", "SSSSS", "dddddd"];
    return LayoutBuilder(builder: (context, constrain) {
      return Container(
        height: 100,
        width: constrain.maxWidth < 900
            ? constrain.maxWidth * 0.9
            : ((constrain.maxWidth * 0.7) / 3),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.0),
        ),
        padding: const EdgeInsets.all(28.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text(
              "Programming Langauges",
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            // const Divider(),
            ListView.builder(
              itemBuilder: (context, index) => Chip(
                label: Text(
                  d[index],
                ),
                labelStyle: TextStyle(
                  color: Colors.indigo,
                ),
                side: BorderSide(
                  color: Colors.indigo,
                ),
                backgroundColor: Colors.white,
              ),
              itemCount: d.length,
            )
          ],
        ),
      );
    });
  }
}
