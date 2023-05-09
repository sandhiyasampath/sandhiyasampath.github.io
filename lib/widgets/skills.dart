import 'package:flutter/material.dart';

class Skills extends StatelessWidget {
  const Skills({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 20.0,
      runSpacing: 20.0,
      alignment: WrapAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          alignment: Alignment.center,
          child: const Text(
            "My Skills",
            style: TextStyle(
              fontSize: 28.0,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        //
        LayoutBuilder(builder: (context, constrain) {
          return Container(
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
                const SizedBox(
                  height: 16,
                ),
                Wrap(
                  spacing: 8.0,
                  runSpacing: 8.0,
                  children: const [
                    Chip(
                      label: Text(
                        "Dart",
                      ),
                      labelStyle: TextStyle(
                        color: Colors.indigo,
                      ),
                      side: BorderSide(
                        color: Colors.indigo,
                      ),
                      backgroundColor: Colors.white,
                    ),
                    Chip(
                      label: Text(
                        "Java",
                      ),
                      labelStyle: TextStyle(
                        color: Colors.indigo,
                      ),
                      side: BorderSide(
                        color: Colors.indigo,
                      ),
                      backgroundColor: Colors.white,
                    ),
                    Chip(
                      label: Text(
                        "Express js",
                      ),
                      labelStyle: TextStyle(
                        color: Colors.indigo,
                      ),
                      side: BorderSide(
                        color: Colors.indigo,
                      ),
                      backgroundColor: Colors.white,
                    ),
                  ],
                ),
              ],
            ),
          );
        }),
        //
        //
        LayoutBuilder(builder: (context, constrain) {
          return Container(
            width: constrain.maxWidth < 900
                ? constrain.maxWidth * 0.9
                : ((constrain.maxWidth * 0.7) / 3),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0),
            ),
            padding: EdgeInsets.all(28.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Frameworks",
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Wrap(
                  spacing: 8.0,
                  runSpacing: 8.0,
                  children: const [
                    Chip(
                      label: Text(
                        "Flutter",
                      ),
                      labelStyle: TextStyle(
                        color: Colors.indigo,
                      ),
                      side: BorderSide(
                        color: Colors.indigo,
                      ),
                      backgroundColor: Colors.white,
                    ),
                    Chip(
                      label: Text(
                        "React Native",
                      ),
                      labelStyle: TextStyle(
                        color: Colors.indigo,
                      ),
                      side: BorderSide(
                        color: Colors.indigo,
                      ),
                      backgroundColor: Colors.white,
                    ),
                    Chip(
                      label: Text(
                        "Django",
                      ),
                      labelStyle: TextStyle(
                        color: Colors.indigo,
                      ),
                      side: BorderSide(
                        color: Colors.indigo,
                      ),
                      backgroundColor: Colors.white,
                    ),
                  ],
                ),
              ],
            ),
          );
        }),
        //
        //
        LayoutBuilder(builder: (context, constrain) {
          return Container(
            width: constrain.maxWidth < 900
                ? constrain.maxWidth * 0.9
                : ((constrain.maxWidth * 0.7) / 3),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0),
            ),
            padding: EdgeInsets.all(28.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Other Tools",
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Wrap(
                  spacing: 8.0,
                  runSpacing: 8.0,
                  children: const [
                    Chip(
                      label: Text(
                        "Mongo DB",
                      ),
                      labelStyle: TextStyle(
                        color: Colors.indigo,
                      ),
                      side: BorderSide(
                        color: Colors.indigo,
                      ),
                      backgroundColor: Colors.white,
                    ),
                    Chip(
                      label: Text(
                        "My SQL",
                      ),
                      labelStyle: TextStyle(
                        color: Colors.indigo,
                      ),
                      side: BorderSide(
                        color: Colors.indigo,
                      ),
                      backgroundColor: Colors.white,
                    ),
                    Chip(
                      label: Text(
                        "Git",
                      ),
                      labelStyle: TextStyle(
                        color: Colors.indigo,
                      ),
                      side: BorderSide(
                        color: Colors.indigo,
                      ),
                      backgroundColor: Colors.white,
                    ),
                  ],
                ),
              ],
            ),
          );
        }),
        //
      ],
    );
  }
}
