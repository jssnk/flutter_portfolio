import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/constants.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../model/project.dart';
import '../../responsive.dart';

class ProjectCard extends StatefulWidget {
  final Project project;

  const ProjectCard({Key? key, required this.project}) : super(key: key);

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.project.title!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.subtitle1,
          ),
          Text(
            widget.project.date!,
            style: const TextStyle(color: bodyTextColor),
          ),
          const SizedBox(
            height: defaultPadding,
          ),
          Text(
            widget.project.description!,
            maxLines: Responsive.isMobileLarge(context) ? 3 : 4,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(height: 1.5),
          ),
          Expanded(
            child: Row(
              children: [
                IconButton(
                    onPressed: () {
                      widget.project.gitUrl != ''
                          ? _launchUrl(Uri.parse(widget.project.gitUrl!))
                          : _showStarRatingDialog();
                    },
                    icon: SvgPicture.asset('assets/icons/github.svg'))
              ],
            ),
          )
        ],
      ),
    );
  }

  Future<void> _launchUrl(Uri uri) async {
    if (!await launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Could not launch $uri');
    }
  }

  void _showStarRatingDialog() {
    showCupertinoDialog(
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            actions: [
              Material(
                child: Center(
                  child: Column(
                    children: [
                      Padding(
                        padding:const EdgeInsets.fromLTRB(0, defaultPadding, defaultPadding, 0),
                        child: Row(
                          children: [
                            const Spacer(),
                            IconButton(onPressed: (){
                              Navigator.pop(context);
                            }, icon: const Icon(Icons.close)
                            ),
                          ],
                        ),
                      ),
                      const Text('STOP', style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: defaultPadding
                      ),),
                      const Text('아직 개발이 진행 중이에요.'),
                      const SizedBox(height: defaultPadding * 2.5)
                    ],
                  ),
                ),
              )
            ]
          );
        });
  }
}
