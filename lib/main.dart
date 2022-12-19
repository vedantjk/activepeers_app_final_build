import 'package:flutter/material.dart';
import 'package:activepeers_app_final_build/splashscreen.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:flutter/services.dart' ;

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return GetMaterialApp(
      theme: new ThemeData(
          fontFamily: 'RobotoMono'),
      home: SplashScreen(),
    );
  }
}

