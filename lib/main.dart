import 'package:flutter/material.dart';
import 'package:pill_pal/pages/bottomNav.dart';
import 'package:pill_pal/pages/login.dart';
import 'package:pill_pal/pages/onboard.dart';
import 'package:pill_pal/themes/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      themeMode: ThemeMode.light,
      theme: EAppTheme.lightTheme,
      darkTheme: EAppTheme.darkTheme,
      // home: Home(),
      home: OnboardingScreen(),
    );
  }
}

