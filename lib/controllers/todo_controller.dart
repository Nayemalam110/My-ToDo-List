import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class TodoController extends GetxController {
  Future<void> addtodo(String task, bool done) async {
    await FirebaseFirestore.instance.collection('todos').doc().set(
      {
        'task': task,
        'isDone': done,
      },
      SetOptions(merge: true),
    ).then(
      (value) => Get.back(),
    );
  }
}
