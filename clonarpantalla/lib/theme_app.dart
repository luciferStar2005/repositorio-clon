import 'package:flutter/material.dart';

abstract class AppTheme {
  static const Color darkBackground = Color(0xFF111318);
  static const Color darkSurface = Color(0xFF1D2026);
  static const Color googleBlue = Color(0xFF4285F4);
  static const Color textPrimary = Color(0xFFE2E2E6);
  
  static ThemeData get theme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      scaffoldBackgroundColor: darkBackground,
      colorScheme: const ColorScheme.dark(
        primary: googleBlue,
        surface: darkSurface,
        onSurface: textPrimary,
      ),
      
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: darkSurface,
        selectedItemColor: googleBlue,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
