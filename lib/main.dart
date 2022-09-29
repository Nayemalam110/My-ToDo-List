import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_to_do_list/widgets/controller_bindings.dart';

import 'screens/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'ToDoList',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
      initialBinding: ControllerBindings(),
    );
  }
}
