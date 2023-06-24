import 'package:firebase_logins/ui/color_schemes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  ColorSchemes get _colorschemes => ColorSchemes.instance;

  static AppTheme? _instance;
  static AppTheme get instance {
    if (_instance != null) {
      return _instance!;
    } else {
      _instance = AppTheme.init();
      return _instance!;
    }
  }

  AppTheme.init();

  ThemeData get theme => ThemeData(
      scaffoldBackgroundColor: _colorschemes.white, appBarTheme: _appBarTheme);

  AppBarTheme get _appBarTheme => AppBarTheme(
      elevation: 0,
      backgroundColor: _colorschemes.white,
      foregroundColor: _colorschemes.black, // yazı rengi
      centerTitle: true,
      titleTextStyle: TextStyle(
          fontFamily: GoogleFonts.aboreto().fontFamily,
          color: _colorschemes.black,
          fontSize: 25,
          fontWeight: FontWeight.w500));
}
