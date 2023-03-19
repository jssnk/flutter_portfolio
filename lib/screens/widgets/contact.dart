import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: defaultPadding),
              child: Text(
                "Contact",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Spacer()
          ],
        ),
        Padding(
            padding: EdgeInsets.only(bottom: defaultPadding),
            child: Text(
              'ssnssnl@icloud.com',
              style: TextStyle(color: bodyTextColor),
            )),
        SizedBox(
          height: defaultPadding,
        )
      ],
    );
  }
}
