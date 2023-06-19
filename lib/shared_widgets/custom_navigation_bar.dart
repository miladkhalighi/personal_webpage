import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../components/app_dimentions.dart';
import '../controller/navigator_controller.dart';
import '../view/root_navigator/item_navigation_bar.dart';

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