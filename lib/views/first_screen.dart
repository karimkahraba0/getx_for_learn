import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learning/view_model/language_view_model.dart';
import 'package:getx_learning/views/second_screen.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Login'.tr,
              style: TextStyle(fontSize: 35),
            ),
            SizedBox(height: 50),
            Text(
              'SignUp'.tr,
              style: TextStyle(fontSize: 35),
            ),
            GetBuilder<AppLanguage>(
              init: AppLanguage(),
              builder: (controller)=> DropdownButton(
                value: controller.appLocale,
                onChanged: (value) {
                  controller.changeLanguage(value);
                  /// to make update in language by getx
                  Get.updateLocale(Locale(value));
                },
                items: [
                  DropdownMenuItem(
                    child: Text('en'),
                    value: 'en',
                  ),
                  DropdownMenuItem(
                    child: Text('ar'),
                    value: 'ar',
                  ),
                ],
              ),
            ),
            SizedBox(height: 50),
            Container(
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
          ],
        ),
      ),
    );
  }
}
