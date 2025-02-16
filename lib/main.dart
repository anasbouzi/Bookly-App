import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Features/Splash/presentation/views/splash_view.dart';
import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(kPrimaryColorValue),
      ),
      home: const SplashView(),
    );
  }
}
