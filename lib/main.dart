import 'package:final_submission/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super (key: key);

  @override
  Widget build(BuildContext context) {
    EasyLoading.instance
      ..displayDuration = const Duration(milliseconds: 1000)
      ..indicatorType = EasyLoadingIndicatorType.dualRing
      ..indicatorSize = 40
      ..backgroundColor = Colors.black
      ..indicatorColor = Colors.white
      ..textColor = Colors.white
      ..maskColor = Colors.blue.withOpacity(1);
    return MaterialApp(
      title: 'faishalyb_final_submission',
      theme: ThemeData(),
      home: Onboarding_Screen(),
      builder: EasyLoading.init(),
    );
  }
}