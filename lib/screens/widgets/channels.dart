import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../constants.dart';

final Uri _url = Uri.parse('https://github.com/jssnk');

class Channels extends StatelessWidget {
  const Channels({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Channels",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          color: Color(0xFF242430),
          child: Row(
            children: [
              IconButton(
                onPressed: () {
                  _launchUrl(_url);
                },
                icon: SvgPicture.asset("assets/icons/github.svg")
              ),
            ],
          ),
        )
      ],
    );
  }

  Future<void> _launchUrl(Uri uri) async {
    if (!await launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Could not launch $_url');
    }
  }
}
