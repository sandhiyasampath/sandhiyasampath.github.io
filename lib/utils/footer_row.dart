import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'animated_icon_button.dart';

class FooterRow extends StatelessWidget {
  const FooterRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedIconButton(
          iconData: FontAwesomeIcons.github,
          onTap: () async {
            await launch("https://github.com/sandhiyasampath?tab=repositories");
          },
        ),
        const SizedBox(
          width: 8.0,
        ),
        AnimatedIconButton(
          iconData: FontAwesomeIcons.linkedin,
          onTap: () async {
            await launch(
                "https://www.linkedin.com/in/sandhiya-sampath-6a5b35220/");
          },
        ),
      ],
    );
  }
}
