import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learning/translation.dart';
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
      translations: Translation(),
      locale: Locale('en'), /// Default language
      fallbackLocale: Locale('en'), /// if there is an error in languages file
      home: FirstScreen(),
    );
  }
}
