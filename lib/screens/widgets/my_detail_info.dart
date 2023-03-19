import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';

class MyDetailInfo extends StatelessWidget {
  final String? title, text;

  const MyDetailInfo({Key? key, this.title, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: defaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title!,
            style: TextStyle(color: Colors.white),
          ),
          Text(
            text!,
            style: TextStyle(color: bodyTextColor),
          )
        ],
      ),
    );
  }
}
