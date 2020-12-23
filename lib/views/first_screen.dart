import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learning/views/second_screen.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Center(
        child: Container(
          child: RaisedButton(
            onPressed: () {
           /// Default route
             //Navigator.push(context, MaterialPageRoute(builder: (context)=> SecondScreen()));
           /// Getx route
              Get.to(SecondScreen());
            },
            child: Text("Click Me!"),
          ),
        ),
      ),
    );
  }
}
