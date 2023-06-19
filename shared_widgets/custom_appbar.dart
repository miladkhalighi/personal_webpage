import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personal_webpage/components/app_colors.dart';
import 'package:personal_webpage/components/app_strings.dart';
import 'package:personal_webpage/controller/navigator_controller.dart';
import 'package:personal_webpage/shared_widgets/custom_button.dart';

import '../components/app_dimentions.dart';
import '../view/root_navigator/item_navigation_bar.dart';
import 'custom_navigation_bar.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key,this.showButton = true});
  final bool showButton;

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(75);
}

class _CustomAppBarState extends State<CustomAppBar> {
  var controller = Get.put(NavigatorController());
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      //color: AppColors.appBarColor,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          //AppColors.secondary,
          AppColors.onPrimary,
          AppColors.primary,
        ],begin: Alignment.topCenter,end: Alignment.bottomCenter),
      ),
      child: Row(
        mainAxisAlignment:MainAxisAlignment.end,
        children: [
          const CustomNavigationBar(),
          SizedBox(
            width: size.width * 0.01,
          ),
          widget.showButton ? CustomButton(title: AppStrings.hireMe, onPressed: () {}) : const SizedBox.shrink(),
          SizedBox(
            width: size.width * 0.03,
          ),
        ],
      ),
    );
  }
}


