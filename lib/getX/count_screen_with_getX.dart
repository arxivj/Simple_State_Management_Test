import 'package:flutter/material.dart';
import 'counter_controller.dart';
import 'package:get/get.dart';

class CountScreenWidthGetX extends StatelessWidget {
  final CounterController counterController = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Count Screen with GetX')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Obx(() => Text('${counterController.count}', style: const TextStyle(fontSize: 40))),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(icon: const Icon(Icons.remove), onPressed: counterController.decrement),
                IconButton(icon: const Icon(Icons.refresh), onPressed: counterController.reset),
                IconButton(icon: const Icon(Icons.add), onPressed: counterController.increment),
              ],
            ),
          ],
        ),
      ),
    );
  }
}