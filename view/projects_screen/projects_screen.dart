import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:personal_webpage/components/app_colors.dart';
import 'package:personal_webpage/components/app_strings.dart';
import 'package:personal_webpage/components/app_text_styles.dart';
import 'package:personal_webpage/model/project.dart';
import 'package:personal_webpage/shared_widgets/custom_button.dart';
import 'package:personal_webpage/view/projects_screen/project_card.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Align(
            alignment: Alignment.center,
            child: RichText(
              text: TextSpan(
                  text: AppStrings.projectsTitlePrefix,
                  children: [
                    TextSpan(
                        text: " ${AppStrings.projectsTitleSuffix}",
                        style: AppTextStyles.titleMedium
                            .copyWith(color: AppColors.onSecondary))
                  ],
                  style: AppTextStyles.titleMedium),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: size.height / 2,
            child: CarouselSlider.builder(
                itemCount: myProjects.length,
                itemBuilder:
                    (BuildContext context, int itemIndex, int pageViewIndex) {
                  return ProjectCard(project: myProjects[itemIndex]);
                },
                options: CarouselOptions(
                  aspectRatio: 2,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.4,
                  autoPlay: true,
                  viewportFraction: 0.55,
                  onPageChanged: (index, reason) {
                    //Todo
                  },
                  
                )),
          ),
          Text(AppStrings.projectsGithubMsg,textAlign: TextAlign.center,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(
                  title: AppStrings.githubSourceButton, onPressed: () {}),
            ],
          ),
        ],
      ),
    );
  }
}


