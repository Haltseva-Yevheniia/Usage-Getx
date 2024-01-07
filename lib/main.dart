import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:usage_of_getx/translation/translation.dart';

import 'pages/first_screen/first_screen.dart';
import 'pages/first_screen/first_screen_binding.dart';

void main() {
  runApp(const MyGetxApp());
}

class MyGetxApp extends StatelessWidget {

  const MyGetxApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: const FirstScreen(),
      initialBinding: FirstScreenBinding(),
      debugShowCheckedModeBanner: false,
      translations: Translat(),
      locale: const Locale('en'),
    );
  }
}