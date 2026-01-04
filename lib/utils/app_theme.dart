import 'package:flutter/material.dart';

class AppTheme {
  // Primary colors
  static const Color primaryBlue = Color(0xFF2196F3);
  static const Color primaryBlueDark = Color(0xFF1976D2);

  // Light Theme Colors
  static const Color lightBackground = Colors.white;
  static const Color lightSurface = Colors.white;
  static const Color lightText = Colors.black87;
  static const Color lightTextSecondary = Colors.grey;
  static const Color lightCardBackground = Colors.white;
  static final Color lightInputBackground = Colors.grey.shade100;

  // Dark Theme Colors
  static const Color darkBackground = Color(0xFF121212);
  static const Color darkSurface = Color(0xFF1E1E1E);
  static const Color darkText = Colors.white;
  static const Color darkTextSecondary = Color(0xFFB0B0B0);
  static const Color darkCardBackground = Color(0xFF2C2C2C);
  static const Color darkInputBackground = Color(0xFF2C2C2C);

  // Light Theme
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: primaryBlue,
    scaffoldBackgroundColor: lightBackground,

    colorScheme: const ColorScheme.light(
      primary: primaryBlue,
      secondary: primaryBlueDark,
      surface: lightSurface,
      background: lightBackground,
      error: Colors.red,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onSurface: lightText,
      onBackground: lightText,
      onError: Colors.white,
    ),

    appBarTheme: const AppBarTheme(
      backgroundColor: lightBackground,
      elevation: 0,
      iconTheme: IconThemeData(color: lightText),
      titleTextStyle: TextStyle(
        color: lightText,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      centerTitle: true,
    ),

    cardTheme: CardThemeData(
      color: lightCardBackground,
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),

    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: lightInputBackground,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),
      hintStyle: const TextStyle(color: lightTextSecondary),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryBlue,
        foregroundColor: Colors.white,
        elevation: 0,
        padding: const EdgeInsets.symmetric(vertical: 16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      ),
    ),

    textTheme: const TextTheme(
      displayLarge: TextStyle(color: lightText),
      displayMedium: TextStyle(color: lightText),
      displaySmall: TextStyle(color: lightText),
      headlineLarge: TextStyle(color: lightText),
      headlineMedium: TextStyle(color: lightText),
      headlineSmall: TextStyle(color: lightText),
      titleLarge: TextStyle(color: lightText),
      titleMedium: TextStyle(color: lightText),
      titleSmall: TextStyle(color: lightText),
      bodyLarge: TextStyle(color: lightText),
      bodyMedium: TextStyle(color: lightText),
      bodySmall: TextStyle(color: lightTextSecondary),
      labelLarge: TextStyle(color: lightText),
      labelMedium: TextStyle(color: lightText),
      labelSmall: TextStyle(color: lightTextSecondary),
    ),

    iconTheme: const IconThemeData(color: lightText),

    dividerColor: Colors.grey.shade300,
  );

  // Dark Theme
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: primaryBlue,
    scaffoldBackgroundColor: darkBackground,

    colorScheme: const ColorScheme.dark(
      primary: primaryBlue,
      secondary: primaryBlueDark,
      surface: darkSurface,
      background: darkBackground,
      error: Colors.redAccent,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onSurface: darkText,
      onBackground: darkText,
      onError: Colors.white,
    ),

    appBarTheme: const AppBarTheme(
      backgroundColor: darkSurface,
      elevation: 0,
      iconTheme: IconThemeData(color: darkText),
      titleTextStyle: TextStyle(
        color: darkText,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      centerTitle: true,
    ),

    cardTheme: CardThemeData(
      color: darkCardBackground,
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),

    inputDecorationTheme: const InputDecorationTheme(
      filled: true,
      fillColor: darkInputBackground,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        borderSide: BorderSide.none,
      ),
      hintStyle: TextStyle(color: darkTextSecondary),
      contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryBlue,
        foregroundColor: Colors.white,
        elevation: 0,
        padding: const EdgeInsets.symmetric(vertical: 16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      ),
    ),

    textTheme: const TextTheme(
      displayLarge: TextStyle(color: darkText),
      displayMedium: TextStyle(color: darkText),
      displaySmall: TextStyle(color: darkText),
      headlineLarge: TextStyle(color: darkText),
      headlineMedium: TextStyle(color: darkText),
      headlineSmall: TextStyle(color: darkText),
      titleLarge: TextStyle(color: darkText),
      titleMedium: TextStyle(color: darkText),
      titleSmall: TextStyle(color: darkText),
      bodyLarge: TextStyle(color: darkText),
      bodyMedium: TextStyle(color: darkText),
      bodySmall: TextStyle(color: darkTextSecondary),
      labelLarge: TextStyle(color: darkText),
      labelMedium: TextStyle(color: darkText),
      labelSmall: TextStyle(color: darkTextSecondary),
    ),

    iconTheme: const IconThemeData(color: darkText),

    dividerColor: Colors.grey.shade800,
  );
}
