import 'package:firebase_logins/ui/extension.dart';
import 'package:flutter/material.dart';

class ColorSchemes {
  static ColorSchemes? _instance;
  static ColorSchemes get instance {
    if (_instance != null) {
      return _instance!;
    } else {
      _instance = ColorSchemes.init();
      return _instance!;
    }
  }

  ColorSchemes.init();

  static final Map<String, String> _colors = {
    'blue': '04A3E7',
    'lightblue': '4AE1EF',
    'yellow': 'FFE903',
    'black': '323232',
    'white': 'EAEAEA',
    'grey': '545454',
    'lightgrey': '888888',
  };

  Color get blue => HexColor.fromHex(_colors['blue']!);
  Color get lightblue => HexColor.fromHex(_colors['lightblue']!);
  Color get yellow => HexColor.fromHex(_colors['yellow']!);
  Color get black => HexColor.fromHex(_colors['black']!);
  Color get white => HexColor.fromHex(_colors['white']!);
  Color get grey => HexColor.fromHex(_colors['grey']!);
  Color get lightgrey => HexColor.fromHex(_colors['lightgrey']!);
}
