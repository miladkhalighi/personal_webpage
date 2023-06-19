import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personal_webpage/components/app_text_styles.dart';
import 'package:personal_webpage/controller/project_card_controller.dart';

import '../../components/app_colors.dart';
import '../../components/app_dimentions.dart';
import '../../model/project.dart';

class ProjectCard extends StatelessWidget {
  final Project project;
  final Function() onTap;
  final bool selected;
  const ProjectCard({
    required this.project,
    required this.onTap,
    this.selected = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var controller =
        Get.put(ProjectCardController(), tag: UniqueKey().toString());
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        var maxHeight = constraints.maxHeight;
        return InkWell(
          onTap: onTap,
          onHover: (value) {
            controller.itemHovering = value;
          },
          child: Stack(
            children: [
              Container(
                padding: EdgeInsets.only(bottom: maxHeight * 0.05),
                width: double.infinity,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: AppColors.cardBackground,
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
              ),
              Positioned(
                bottom: 3,
                left: 0,
                right: 0,
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 500),
                  opacity: selected ? 1 : 0,
                  child: Obx(
                    ()=> AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      height: controller.itemHovering ? maxHeight: maxHeight * 0.1,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              controller.itemHovering ? AppColors.secondary.withOpacity(0.3): AppColors.secondary.withOpacity(0.9),
                              controller.itemHovering ? AppColors.secondary.withOpacity(0.1) : AppColors.secondary.withOpacity(0.3),
                              //Colors.transparent
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                          borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(16),
                              bottomRight: Radius.circular(16))),
                      child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 4),
                            child: Text(
                              project.title,
                              style: AppTextStyles.appBarSelectedItemNavigation,
                              overflow: TextOverflow.fade,
                            ),
                          )),
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
