import 'package:get/get.dart';
import 'package:my_to_do_list/controllers/todo_controller.dart';

class ControllerBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<TodoController>(TodoController());
  }
}
