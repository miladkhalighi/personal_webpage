import 'package:flutter/material.dart';

import '../../components/app_colors.dart';
import '../../components/app_dimentions.dart';
import '../../model/project.dart';

class ProjectCard extends StatelessWidget {
  final Project project;
  const ProjectCard({
    required this.project,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.onPrimary,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(width: 3, color: AppColors.secondary)),
      child: Padding(
        padding: EdgeInsets.all(AppDimentions.medium),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            //mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: List.generate(
                project.imgPaths.length,
                (index) => Image.asset(
                      project.imgPaths[index],
                      fit: BoxFit.contain,
                    )),
          ),
        ),
      ),
    );
  }
}