import 'package:flutter/material.dart';
import 'package:personal_webpage/shared_widgets/custom_appbar.dart';
import 'package:personal_webpage/view/about_me_screen/about_me_screen.dart';
import 'package:personal_webpage/view/home_screen/home_screen.dart';
import 'package:personal_webpage/view/projects_screen/projects_screen.dart';
import 'package:personal_webpage/view/services_screen/services_screen.dart';

class RootNavigator extends StatefulWidget {
  const RootNavigator({super.key});

  @override
  State<RootNavigator> createState() => _RootNavigatorState();
}

class _RootNavigatorState extends State<RootNavigator> {
  int _pageSelectedIndex = 0;
  
  List<Widget> pages = [
    const HomeScreen(),
    const ProjectsScreen(),
    const ServicesScreen(),
    const AboutMeScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const CustomAppBar(),
          Expanded(
            child: PageView.builder(itemBuilder: (context, index) {
              return pages[index];
            },
            itemCount: pages.length,
            scrollDirection: Axis.vertical,
            pageSnapping: false,
            scrollBehavior: const ScrollBehavior(),
            physics: const BouncingScrollPhysics(),
            ),
          ),
        ],
      ),
      
    );
  }
}
