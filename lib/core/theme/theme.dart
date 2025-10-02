import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quewie_pos/core/theme/app_color.dart';


class AppTheme {
  /// Light Theme (default)
  static ThemeData lightTheme = ThemeData(
    
    brightness: Brightness.light,
    primaryColor: AppColor.primary,
    scaffoldBackgroundColor: AppColor.backgroundLight,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColor.primary,
      foregroundColor: AppColor.textLight,
    
    ),
    textTheme: const TextTheme(
      bodyMedium: TextStyle(color: AppColor.textDark, fontSize: 16),
      bodyLarge: TextStyle(
        color: AppColor.textDark,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
      
    ),
 fontFamily: GoogleFonts.poppins().fontFamily,
   textSelectionTheme: const TextSelectionThemeData(
    cursorColor: AppColor.primary,          // cursor
    selectionColor: AppColor.primaryLight,  // text highlight
    selectionHandleColor: AppColor.primary, // drag handle
  ),

   
   inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColor.primaryLight.withOpacity(0.05),
      labelStyle: const TextStyle(color: AppColor.textDark),
      prefixIconColor: AppColor.primary,

      // 👇 Default border (not focused)
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Colors.grey, width: 1),
      ),
      // 👇 Focused border
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: AppColor.primary, width: 2),
      ),
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColor.primary,
        foregroundColor: AppColor.textLight,
        shape: RoundedRectangleBorder(
         
        ),
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 24),
      ),
    ),
  );

  /// Dark Theme (optional)
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: AppColor.primary,
    scaffoldBackgroundColor: AppColor.backgroundDark,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColor.backgroundDark,
      foregroundColor: AppColor.textLight,
    
    ),
    textTheme: const TextTheme(
      bodyMedium: TextStyle(color: AppColor.textLight, fontSize: 16),
      bodyLarge: TextStyle(
        color: AppColor.textLight,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
      
    ),
     fontFamily: GoogleFonts.poppins().fontFamily,
     textSelectionTheme: const TextSelectionThemeData(
    cursorColor: AppColor.primary,          // cursor
    selectionColor: AppColor.primaryLight,  // text highlight
    selectionHandleColor: AppColor.primary, // drag handle
  ),
  
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColor.primaryLight.withOpacity(0.1),
      border: OutlineInputBorder(
       
       
      ),
      labelStyle: const TextStyle(color: AppColor.textLight),
      prefixIconColor: AppColor.primary,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColor.primary,
        foregroundColor: AppColor.textLight,
        shape: RoundedRectangleBorder(
         
        ),
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 24),
      ),
    ),
  );
}
