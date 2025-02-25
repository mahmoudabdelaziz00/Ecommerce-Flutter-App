import 'package:ecommerce_s1e/screens/login_screen.dart';
import 'package:ecommerce_s1e/screens/navigation_screen.dart';
import 'package:flutter/material.dart';

import 'screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shopping App',
      theme: ThemeData(
        primaryColor: Color(0xFFEF6969),
      ),
      home: LoginScreen(),
    );
  }
}

