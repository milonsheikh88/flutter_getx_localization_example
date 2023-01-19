/// MILON SHEIKH
/// milonsheikh88@gmail.com

import 'package:get_storage/get_storage.dart';

class UserPrefs{
  static final _userInfo = GetStorage("USER_INFO");

  static Future<void> initStorage() async {
    await GetStorage.init("USER_INFO");
  }

  bool get userLan => _userInfo.read("user_lang") ?? false;

  void saveUserLan(bool lang) {
    _userInfo.write("user_lang", lang);
  }

  static void clearBox() {
    _userInfo.erase();
  }

}