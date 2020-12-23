import 'package:get/get.dart';

// contain all business logic
// work in MVVM Model
// GetxController extends from DisposableInterface that mean our controller will be
// deleted from memory after navigation to next page so performance will be very good.
// update() instead notifyListeners() in provider
class Example extends GetxController {
  ///  getBuilder
  // var counter = 0.obs; // obs -- observer (RXObject)
  // void increment(){
  //   counter++;
  //   //  update();
  //
  // }

  ///  getx / obx
  var counter = 0.obs; // obs -- observer (RXObject)
  void increment() {
    counter++;
    //  update();  -----> not needed in steam
  }

  // instead initstate() in StatefulWidget
  // work automatically when we call controller
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  // instead dispose() in StatefulWidget
  // work automatically when the controller be deleted from memory
  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}
