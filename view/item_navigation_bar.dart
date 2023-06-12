import 'package:flutter/material.dart';

import '../components/app_colors.dart';
import '../components/app_dimentions.dart';
import '../components/app_text_styles.dart';

class ItemNavigationBar extends StatelessWidget {
  final String title;
  final Function() onTap;
  final Function(bool) onHover;
  final bool hovering;
  final bool selected;
  const ItemNavigationBar({
    required this.title,
    required this.onTap,
    required this.onHover,
    this.hovering = false,
    this.selected = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      onHover: onHover,
      splashColor: AppColors.splashColor,
      child: Container(
        padding: EdgeInsets.all(AppDimentions.small),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppDimentions.borderRaduis)
        ),
        child: Column(
          children: [
            Text(
              title,
              style: selected ? AppTextStyles.appBarSelectedItemNavigation : AppTextStyles.appBarUnSelectedItemNavigation,
            ),
            SizedBox(
              height: AppDimentions.small,
            ),
            AnimatedContainer(
              height: 3,
              width: hovering ? AppDimentions.large*3 : 0,
              decoration: BoxDecoration(
                color: hovering
                    ? AppColors.appBarItemNavigationDividerColor
                    : Colors.transparent,
                    borderRadius: BorderRadius.circular(AppDimentions.borderRaduis),
                 boxShadow: [
                  BoxShadow(color: AppColors.appBarItemNavigationDividerColor,blurRadius: 16,offset: const Offset(2, 2))
                 ]   
              ),
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            )
          ],
        ),
      ),
    );
  }
}