import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learning/views/first_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // to use getx package use GetMaterialApp instead MaterialApp
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Getx Package',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FirstScreen(),
    );
  }
}
