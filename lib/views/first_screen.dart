import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learning/views/second_screen.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  String _selectedLang = 'en';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Login',
              style: TextStyle(fontSize: 35),
            ),
            SizedBox(height: 50),
            Text(
              'SignUp',
              style: TextStyle(fontSize: 35),
            ),
            DropdownButton(
              value: _selectedLang,
              onChanged: (value) {
                setState(() {
                  _selectedLang = value;
                });
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
