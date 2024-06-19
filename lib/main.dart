import 'package:flutter/material.dart';
import 'package:optiguard/pages/home_page.dart';
import 'package:optiguard/pages/landing_page.dart';
import 'package:optiguard/pages/login_page.dart';
import 'package:optiguard/pages/profile_page.dart';
import 'package:optiguard/pages/register_page.dart';
import 'package:optiguard/pages/settings_page.dart';
import 'package:optiguard/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'OptiGuard',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashPage(),
      routes: {
        '/splashpage': (context) => SplashPage(),
        '/landingpage': (context) => LandingPage(),
        '/loginpage': (context) => LoginPage(),
        '/registerpage': (context) => RegisterPage(),
        '/homepage': (context) => HomePage(),
        '/profilepage': (context) => ProfilePage(),
        '/settingspage': (context) => SettingsPage(),
      },
    );
  }
}
