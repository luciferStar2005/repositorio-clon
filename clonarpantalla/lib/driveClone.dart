import 'package:flutter/material.dart';
import 'driveHome.dart';
import 'theme_app.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: AppTheme.theme,
      home: const DriveHome(),
    );
  }
}
