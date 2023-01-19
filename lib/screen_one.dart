
import 'package:flutter/material.dart';
import 'package:flutter_getx_localization_example/screen_two.dart';
import 'package:flutter_getx_localization_example/user_prefs.dart';
import 'package:get/get.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  final userPrefs= UserPrefs();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'screen1'.tr,
              style: Theme.of(context).textTheme.headline4,
            ),

            SizedBox(height: 20),

            OutlinedButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ScreenTwo()),
                );
              },
              child: Text('go'.tr),
            ),
          ],
        ),
      ),
    );
  }

}