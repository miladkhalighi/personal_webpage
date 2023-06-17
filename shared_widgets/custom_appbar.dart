import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personal_webpage/components/app_colors.dart';
import 'package:personal_webpage/components/app_strings.dart';
import 'package:personal_webpage/controller/navigator_controller.dart';
import 'package:personal_webpage/shared_widgets/custom_button.dart';

import '../components/app_dimentions.dart';
import '../view/root_navigator/item_navigation_bar.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

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
    return Obx(
      () => Container(
        color: AppColors.primary,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              children:
                  List.generate(controller.navigationItems.length, (index) {
                var currentItem = controller.navigationItems[index];
                return Padding(
                  padding: EdgeInsets.all(AppDimentions.medium),
                  child: ItemNavigationBar(
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
                );
              }),
            ),
            SizedBox(
              width: size.width * 0.01,
            ),
            CustomButton(title: AppStrings.hireMe, onPressed: () {}),
            SizedBox(
              width: size.width * 0.03,
            ),
          ],
        ),
      ),
    );
  }
}
