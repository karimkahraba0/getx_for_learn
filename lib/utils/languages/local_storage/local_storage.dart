import 'package:get_storage/get_storage.dart';

class LocalStorage {

  /// method to write the data
  void saveLanguageToDisk(String language) async {
    await GetStorage().write('lang',language);
  }

  /// method to read the data
  Future<String> get languageSelected async {
    return await GetStorage().read('lang');
  }

}