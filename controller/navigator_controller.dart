import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class NavigatorController extends GetxController {
  final RxInt _pageSelectedIndex = 0.obs;
  final RxInt _hoverItemIndex = 0.obs;

  final List<String> _navigationItems = [
    "Home",
    "Projects",
    "Services",
    "About me"
  ];

  late PageController pageViewController;

  @override
  void onInit() {
    pageViewController = PageController(initialPage: _pageSelectedIndex.value);
    super.onInit();
  }

  @override
  onClose() {
    pageViewController.dispose();
    super.onClose();
  }

  set pageSelectedIndex(int index) {
    _pageSelectedIndex.value = index;
  }

  int get pageSelectedIndex => _pageSelectedIndex.value;

  set hoverItemIndex(int index) {
    _hoverItemIndex.value = index;
  }

  void animateToPage(int index) {
    pageViewController.animateToPage(index,
        duration: const Duration(milliseconds: 500), curve: Curves.linear);
  }

  int get hoverItemIndex => _hoverItemIndex.value;

  List<String> get navigationItems => _navigationItems;
}
