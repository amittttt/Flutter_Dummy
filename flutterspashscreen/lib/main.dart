import 'package:flutter/material.dart';
import 'SplashScreen.dart';

void main() => runApp(MaterialApp(
  title: 'Splash Screen',
  theme: ThemeData(
    primaryColor: new Color(0xFF03A9F4),
    accentColor: Colors.orange
  ),
  debugShowCheckedModeBanner: false,
  home: SplashScreen(),
),
);
  