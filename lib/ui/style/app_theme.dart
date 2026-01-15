import 'package:flutter/material.dart';
import 'colors.dart';

class AppTheme {
  static ThemeData get defaultTheme {
    return ThemeData(
      useMaterial3: true,

      // Fundo da aplicação com um cinza bem claro, suave e neutro
      scaffoldBackgroundColor: AppColor.background,

      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColor.primary,
        primary: AppColor.primary,
        secondary: AppColor.accent,
        surface: AppColor.surface,
        onSurface: AppColor.text,
        onPrimary: AppColor.onPrimary,
        onSecondary: AppColor.text,
        error: AppColor.error,
      ),

      appBarTheme: const AppBarTheme(
        backgroundColor: AppColor.primary,
        foregroundColor: AppColor.onPrimary,
        elevation: 0,
        iconTheme: IconThemeData(color: AppColor.onPrimary),
        titleTextStyle: TextStyle(
          color: AppColor.onPrimary,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),

      textTheme: const TextTheme(
        titleLarge: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: AppColor.text,
        ),
        bodyMedium: TextStyle(
          fontSize: 16,
          color: AppColor.text,
        ),
        labelLarge: TextStyle(
          fontSize: 14,
          color: AppColor.text,
        ),
      ),

      iconTheme: const IconThemeData(
        color: AppColor.primary,
      ),

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.primary,
          foregroundColor: AppColor.onPrimary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),

      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: AppColor.primary,
        ),
      ),

      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColor.inputFill,
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: AppColor.border),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: AppColor.primary, width: 2),
        ),
        labelStyle: const TextStyle(color: AppColor.text),
        hintStyle: const TextStyle(color: AppColor.hint),
      ),

      dividerColor: AppColor.divider,
      hintColor: AppColor.hint,
    );
  }
}
