import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/responsive.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _url =
    Uri.parse('https://www.notion.so/9d62fdb8bb724ba7978d47c5b5ce99a6');

class HomeBanner extends StatefulWidget {
  const HomeBanner({Key? key}) : super(key: key);

  @override
  State<HomeBanner> createState() => _HomeBannerState();
}

class _HomeBannerState extends State<HomeBanner> {
  bool fadeIn = false;

  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 500)).then((value) {
      setState(() {
        fadeIn = true;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Responsive.isMobile(context) ? 2.5 : 3,
      child: Stack(
        children: [
          Container(
            color: darkColor.withOpacity(0.66),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BuildAnimatedText(),
                Padding(
                  padding: Responsive.isMobile(context)
                      ? EdgeInsets.all(4)
                      : EdgeInsets.all(defaultPadding / 2),
                  child: InkWell(
                    onTap: () {
                      _launchUrl(_url);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(color: Colors.white)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Notion 포트폴리오 →',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          if (Responsive.isDesktop(context))
            Positioned(
                right: 150,
                bottom: 100,
                child: AnimatedOpacity(
                  opacity: fadeIn ? 1 : 0,
                  duration: const Duration(seconds: 1),
                  child: Container(
                    width: 450,
                    child: Image.asset('assets/images/desktop_view.png'),
                  ),
                )),
          if (Responsive.isDesktop(context))
            Positioned(
                right: 90,
                top: 75,
                child: AnimatedOpacity(
                  opacity: fadeIn ? 1 : 0,
                  duration: const Duration(seconds: 1),
                  child: Container(
                    width: 200,
                    child: Image.asset('assets/images/mobile_view.png'),
                  ),
                ))
        ],
      ),
    );
  }
}

class BuildAnimatedText extends StatelessWidget {
  const BuildAnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      // it applies same style to all the widgets under it
      style: Theme.of(context).textTheme.titleLarge!,
      maxLines: 1,
      child: Row(
        children: [
          if (!Responsive.isMobileLarge(context))
            SizedBox(width: defaultPadding / 2),
          Responsive.isMobile(context)
              ? Expanded(child: AnimatedText())
              : AnimatedText(),
          if (!Responsive.isMobileLarge(context))
            SizedBox(width: defaultPadding / 2)
        ],
      ),
    );
  }
}

class AnimatedText extends StatelessWidget {
  const AnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      animatedTexts: [
        TyperAnimatedText(
          Responsive.isMobile(context)
              ? '모바일 APP과 반응형 WEB을 제작합니다.'
              : "Flutter로 모바일 APP과 반응형 WEB을 제작합니다.",
          speed: Duration(milliseconds: 60),
        ),
        TyperAnimatedText(
          "Flutter와 Vue를 이용한 프론트엔드.",
          speed: Duration(milliseconds: 60),
        ),
        TyperAnimatedText(
          "Spring JPA를 사용하는 풀스택 개발자입니다.",
          speed: Duration(milliseconds: 60),
        ),
      ],
    );
  }
}

Future<void> _launchUrl(Uri uri) async {
  if (!await launchUrl(
    uri,
    mode: LaunchMode.externalApplication,
  )) {
    throw Exception('Could not launch $_url');
  }
}
