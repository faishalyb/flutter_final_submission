import 'package:final_submission/account/login_screen.dart';
import 'package:final_submission/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  await dotenv.load();
  runApp(MyApp());
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
    // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    //   statusBarColor: Colors.teal, // GANTI WARNA STATUS BAR (ATAS)
    //   systemNavigationBarColor: Colors.teal, // GANTI WARNA NAV BAR (BAWAH)
    // ));
    return MaterialApp(
      title: 'faishalyb_final_submission',
      theme: ThemeData(),
      home: Login_Screen(),
      builder: EasyLoading.init(),
    );
  }
}