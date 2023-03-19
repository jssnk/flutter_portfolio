import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 0.9,
        child: Container(
          color: Color(0xFF242430),
          child: Column(
            children: [
              Spacer(flex: 2,),
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/thumbnails/my_profile_thumbnail.jpg'),
              ),
              Spacer(),
              Text("Kim JangSoon"),
              Spacer(),
              Text("레벨업 하는 신입 풀스택 개발자", style: TextStyle(
                color: bodyTextColor
              ),),
              Spacer(flex: 2,)
            ],
          ),
        )
    );
  }
}
