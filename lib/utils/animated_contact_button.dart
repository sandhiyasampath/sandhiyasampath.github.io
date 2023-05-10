import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sandhiya_portfolio/theme/text_widget.dart';

import '../theme/index.dart';
import '../theme/theme.dart';

class AnimatedContact extends StatefulWidget {
  final IconData iconData;
  final String title;
  final String subtitle;
  final VoidCallback onTap;
  const AnimatedContact({
    Key? key,
    required this.iconData,
    required this.title,
    required this.subtitle,
    required this.onTap,
  }) : super(key: key);

  @override
  State<AnimatedContact> createState() => _AnimatedContactState();
}

class _AnimatedContactState extends State<AnimatedContact> {
  bool isHovering = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      onHover: (val) {
        setState(() {
          isHovering = val;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        decoration: BoxDecoration(
          color: isHovering ? Colors.grey.shade300 : Colors.white,
          borderRadius: BorderRadius.circular(
            12.0,
          ),
          border: Border.all(
            color: isHovering ? Colors.grey : Colors.white
          ),
        ),
        margin: EdgeInsets.only(top: 10.0),
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: FaIcon(
                  widget.iconData,
                  color: Colors.blue,
                  size: 20.0,
                ),
              ),
            ),
            //
            const SizedBox(
              width: 12.0,
            ),
            //
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                body1(
                    text: widget.title,
                    color: Colors.black,
                    appTheme: appTheme(fontFamily: FontFamily.medium)),
                body1(
                    text: widget.subtitle,
                    color: Colors.black,
                    appTheme: appTheme(fontFamily: FontFamily.medium)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
