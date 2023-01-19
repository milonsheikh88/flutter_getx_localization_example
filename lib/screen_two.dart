import 'package:flutter/material.dart';
import 'package:flutter_getx_localization_example/user_prefs.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';


class ScreenTwo extends StatefulWidget {
   ScreenTwo({Key? key}) : super(key: key);

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  final userPrefs= UserPrefs();

  updateLanguage() {
    if (userPrefs.userLan) {
      Get.updateLocale(const Locale('en', 'US'));
    } else {
      Get.updateLocale(const Locale('bn', 'BD'));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'screen2'.tr,
              style: Theme.of(context).textTheme.headline4,
            ),

            SizedBox(height: 20),

            FlutterSwitch(
                activeText: 'বাংলা',
                activeTextColor: Colors.white,
                activeColor: Colors.indigoAccent,
                inactiveText: 'English',
                inactiveTextColor: Colors.white,
                inactiveColor: Colors.green,
                value: userPrefs.userLan,
                valueFontSize: 12.0,
                width: 85,
                showOnOff: true,
                onToggle: (value) {
                  setState(() {
                    userPrefs.saveUserLan(value);
                    updateLanguage();
                  });
                })
          ],
        ),
      ),
    );
  }
}
