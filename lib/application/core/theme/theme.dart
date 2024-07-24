import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static const Color _lightIconColor = Colors.black;
  static const Color _darkIconColor = Colors.white;

  // Define light color scheme
  static const ColorScheme _lightColorScheme = ColorScheme(
    primary: Colors.blue,
    primaryContainer: Colors.blueAccent,
    secondary: Colors.green,
    secondaryContainer: Colors.greenAccent,
    surface: Colors.white,
    error: Colors.red,
    onPrimary: Colors.white,
    onSecondary: Colors.white,
    onSurface: Colors.black,
    onError: Colors.white,
    brightness: Brightness.light,
  );

  // Define dark color scheme
  static const ColorScheme _darkColorScheme = ColorScheme(
    primary: Colors.blue,
    primaryContainer: Colors.blueAccent,
    secondary: Colors.green,
    secondaryContainer: Colors.greenAccent,
    surface: Colors.black,
    error: Colors.red,
    onPrimary: Colors.black,
    onSecondary: Colors.black,
    onSurface: Colors.white,
    onError: Colors.black,
    brightness: Brightness.dark,
  );

  // Text styles for dark theme
  static const TextStyle _darkHeading = TextStyle(
    fontFamily: 'poppinsBold',
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  static const TextStyle _darkHeadline2 = TextStyle(
    fontFamily: 'poppinsSemiBold',
    fontSize: 22,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );

  static const TextStyle _darkBodyText1 = TextStyle(
    fontFamily: 'poppinsRegular',
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: Colors.white,
  );

  static const TextStyle _darkBodyText2 = TextStyle(
    fontFamily: 'poppinsMedium',
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );

  // Text styles for light theme
  static const TextStyle _lightHeading = TextStyle(
    fontFamily: 'poppinsBold',
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static const TextStyle _lightHeadline2 = TextStyle(
    fontFamily: 'poppinsSemiBold',
    fontSize: 22,
    fontWeight: FontWeight.w600,
    color: Colors.black,
  );

  static const TextStyle _lightBodyText1 = TextStyle(
    fontFamily: 'poppinsRegular',
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: Colors.black,
  );

  static const TextStyle _lightBodyText2 = TextStyle(
    fontFamily: 'poppinsMedium',
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: Colors.black,
  );

  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: _lightColorScheme,
    primaryColor: _lightColorScheme.primary,
    scaffoldBackgroundColor: _lightColorScheme.surface,
    appBarTheme: AppBarTheme(
      backgroundColor: _lightColorScheme.primary,
      foregroundColor: _lightColorScheme.onPrimary,
      iconTheme: IconThemeData(color: _lightIconColor),
    ),
    iconTheme: IconThemeData(color: _lightIconColor),
    textTheme: TextTheme(
      headlineLarge: _lightHeading,
      headlineMedium: _lightHeadline2,
      bodyLarge: _lightBodyText1,
      bodyMedium: _lightBodyText2,
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    colorScheme: _darkColorScheme,
    primaryColor: _darkColorScheme.primary,
    scaffoldBackgroundColor: _darkColorScheme.surface,
    appBarTheme: AppBarTheme(
      backgroundColor: _darkColorScheme.primary,
      foregroundColor: _darkColorScheme.onPrimary,
      iconTheme: IconThemeData(color: _darkIconColor),
    ),
    iconTheme: IconThemeData(color: _darkIconColor),
    textTheme: TextTheme(
      headlineLarge: _darkHeading,
      headlineMedium: _darkHeadline2,
      bodyLarge: _darkBodyText1,
      bodyMedium: _darkBodyText2,
    ),
  );
}
