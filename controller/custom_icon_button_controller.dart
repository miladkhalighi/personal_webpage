import 'package:get/state_manager.dart';

class CustomIconButtonController extends GetxController {
  final RxBool _hovering = false.obs;

  set hovering(bool hovering) {
    _hovering.value = hovering;
  }
  bool get hovering => _hovering.value; 
}