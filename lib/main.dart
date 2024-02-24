import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pill_pal/pages/bottomNav.dart';
import 'package:pill_pal/pages/login.dart';
import 'package:pill_pal/pages/onboard.dart';
import 'package:pill_pal/themes/theme.dart';
import 'package:pill_pal/utils/checkuser.dart';

import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PillPal',
      themeMode: ThemeMode.light,
      theme: EAppTheme.lightTheme,
      darkTheme: EAppTheme.darkTheme,
      // home: Home(),
      home: CheckUser(),
    );
  }
}

