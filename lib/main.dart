import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:syoft_ui/view/register_page/intro_page.dart';
import 'package:syoft_ui/view/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        theme: ThemeData(
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: Colors.purple,
  	),
  ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
