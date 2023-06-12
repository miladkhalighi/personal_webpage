import 'package:flutter/material.dart';
import 'package:personal_webpage/shared_widgets/custom_button.dart';

import '../components/app_dimentions.dart';
import '../view/item_navigation_bar.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({super.key});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  List<String> navigationItems = ["Home", "Services", "About me"];
  int _selectedItemIndex = 0;
  int _hoverItemIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Row(
          children: List.generate(navigationItems.length, (index) {
            var currentItem = navigationItems[index];
            return Padding(
              padding: EdgeInsets.all(AppDimentions.medium),
              child: ItemNavigationBar(
                title: currentItem,
                onTap: () {
                  setState(() {
                    _selectedItemIndex = index;
                  });
                },
                onHover: (isActive) {
                  setState(() {
                    _hoverItemIndex = isActive ? index : -1;
                  });
                },
                hovering: index == _hoverItemIndex ? true : false,
                selected: index == _selectedItemIndex ? true : false,
              ),
            );
          }),
        ),
        SizedBox(
          width: AppDimentions.large,
        ),
        CustomButton(title: 'Hire me', onPressed: () {}),
        SizedBox(
          width: AppDimentions.large,
        ),
      ],
    );
  }
}