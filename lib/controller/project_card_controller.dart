import 'package:get/get.dart';

class ProjectCardController extends GetxController {
  final RxInt _itemSelectedIndex = 0.obs;
  final RxBool _itemHovering = false.obs;

  set itemSelectedIndex(int index) {
    _itemSelectedIndex.value = index;
  }
  int get itemSelectedIndex => _itemSelectedIndex.value;

  set itemHovering(bool hover) {
    _itemHovering.value = hover;
  }
  bool get itemHovering => _itemHovering.value;
}
