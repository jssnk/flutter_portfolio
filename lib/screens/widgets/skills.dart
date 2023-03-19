import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/widgets/animated_progress_indicator.dart';

class Skills extends StatelessWidget {
  const Skills({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Skills",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Row(
          children: [
            Expanded(
                child: AnimatedProgressIndicator(
              percentage: 0.8,
              label: "Flutter",
            )),
            SizedBox(
              width: defaultPadding,
            ),
            Expanded(
                child: AnimatedProgressIndicator(
              percentage: 0.75,
              label: "JAVA",
            )),
            SizedBox(
              width: defaultPadding,
            ),
            Expanded(
                child: AnimatedProgressIndicator(
              percentage: 0.65,
              label: "Vue.js",
            )),
          ],
        ),
        SizedBox(
          height: defaultPadding,
        ),
      ],
    );
  }
}
