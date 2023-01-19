import 'package:flutter/material.dart';
import 'package:flutter_getx_localization_example/Languages.dart';
import 'package:flutter_getx_localization_example/user_prefs.dart';
import 'package:get/get.dart';
import 'screen_one.dart';

void main() {
  UserPrefs.initStorage();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 MyApp({super.key});

 final userPrefs= UserPrefs();

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Languages(),
      locale: userPrefs.userLan
          ? const Locale('en', 'US')
          : const Locale('bn', 'BD'),
      fallbackLocale: const Locale('bn', 'BD'),
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:const ScreenOne(),
    );
  }
}


