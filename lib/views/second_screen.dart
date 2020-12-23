import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learning/view_model/example_view_model.dart';

// statemanagement
/// getBuilder -- not reactive -- not stream  -- same syntax with getx
/// getx -- reactive -- stream -- need controller in syntax
/// obx  -- reactive -- stream -- not need controller in syntax
/// obx is different from getx that it takes more than one controller

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Example example =
        Get.put(Example()); // to use with getx / obx --- dependency injection
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ///  getBuilder
            // GetBuilder not streaming
            // GetBuilder not reactive programming
            // GetBuilder<Example>(
            //     init: Example(), // one time only (first time)
            //     builder: (value) => Text("${value.counter.value}")),
            // GetBuilder<Example>(
            //   builder: (value) => RaisedButton(
            //     onPressed: () {
            //       value.increment();
            //     },
            //     child: Text("increment"),
            //   ),
            // )
            /// getx
            //    GetX<Example>(
            //        init: Example(), // one time only (first time)
            //        builder: (value) => Text("${value.counter.value}")),
            //    RaisedButton(
            //        onPressed: () {
            //          example.increment();
            //        },
            //        child: Text("increment"),
            //      ),
            /// obx
            Obx(() => Text("${example.counter.value}")),
            RaisedButton(
              onPressed: () {
                example.increment();
              },
              child: Text("increment"),
            ),
          ],
        ),
      ),
    );
  }
}
