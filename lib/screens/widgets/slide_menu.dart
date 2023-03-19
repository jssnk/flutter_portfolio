import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/screens/widgets/channels.dart';
import 'package:portfolio/screens/widgets/my_info.dart';
import 'package:portfolio/screens/widgets/skills.dart';
import 'package:portfolio/screens/widgets/contact.dart';

import 'my_detail_info.dart';

class SlideMenu extends StatelessWidget {
  const SlideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            MyInfo(),
            Expanded(
                child: SingleChildScrollView(
              padding: EdgeInsets.all(defaultPadding),
              child: Column(
                children: [
                  MyDetailInfo(
                    title: "Residence",
                    text: "Korea",
                  ),
                  MyDetailInfo(
                    title: "City",
                    text: "Seoul",
                  ),
                  Divider(),
                  Skills(),
                  Divider(),
                  Contact(),
                  Divider(),
                  Channels(),
                  Divider(),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: defaultPadding),
                    child: Text(
                      '해당페이지는 flutter를 사용해 제작했습니다.',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
