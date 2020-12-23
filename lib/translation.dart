import 'package:get/get.dart';
import 'package:getx_learning/utils/languages/ar.dart';
import 'package:getx_learning/utils/languages/en.dart';

class Translation extends Translations {

 /// use this method to answer what languages ypu will use in app
 /// we use map in languages to put our words and their keys
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        'en': en,
        'ar': ar,
      };
}
