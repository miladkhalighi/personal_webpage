import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personal_webpage/components/app_colors.dart';
import 'package:personal_webpage/components/app_strings.dart';
import 'package:personal_webpage/controller/navigator_controller.dart';
import 'package:personal_webpage/shared_widgets/custom_button.dart';

import '../components/app_dimentions.dart';
import '../view/root_navigator/item_navigation_bar.dart';

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

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(NavigatorController());
    return ListView.builder(
      padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.01),
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        var currentItem = controller.navigationItems[index];
        return Padding(
          padding: EdgeInsets.symmetric(
              horizontal: AppDimentions.large, vertical: AppDimentions.large),
          child: Obx(
            () => ItemNavigationBar(
              title: currentItem,
              onTap: () {
                controller.pageSelectedIndex = index;
                controller.animateToPage(index);
              },
              onHover: (isActive) {
                controller.hoverItemIndex = isActive ? index : -1;
              },
              hovering: index == controller.hoverItemIndex,
              selected: index == controller.pageSelectedIndex,
            ),
          ),
        );
      },
      itemCount: controller.navigationItems.length,
    );
  }
}
