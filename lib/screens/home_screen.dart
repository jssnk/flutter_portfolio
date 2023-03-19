import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/screens/widgets/home_banner.dart';
import 'package:portfolio/screens/widgets/my_projects.dart';
import 'package:portfolio/screens/widgets/slide_menu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
              backgroundColor: bgColor,
              leading: Builder(
                builder: (context) => IconButton(
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                    icon: Icon(Icons.menu)),
              ),
            ),
      drawer: SlideMenu(),
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: maxWidth),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (Responsive.isDesktop(context))
                Expanded(flex: 2, child: SlideMenu()),
              SizedBox(
                width: defaultPadding,
              ),
              Expanded(
                  flex: 8,
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.only(right: defaultPadding),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [HomeBanner(), MyProjects()],
                      ),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
