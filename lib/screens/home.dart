import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_to_do_list/controllers/todo_controller.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _formKey = GlobalKey<FormState>();
  var _taskController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final todoController = Get.find<TodoController>();
    return Scaffold(
      body: Center(
        child: Text('Home'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => Get.defaultDialog(
            title: 'Add Todo',
            content: Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: _taskController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Cannot be empty';
                      } else {
                        return null;
                      }
                    },
                  ),
                  ElevatedButton(
                      onPressed: (() async => await todoController.addtodo(
                          _taskController.text.trim(), false)),
                      child: Text('save'))
                ],
              ),
            )),
      ),
    );
  }
}
