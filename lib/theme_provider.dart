import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeProvider extends ChangeNotifier {
  Brightness _brightness = Brightness.dark;
  Brightness get brightness => _brightness;
  void switchTheme() {
    if (_brightness == Brightness.light) {
      _brightness = Brightness.dark;
    } else {
      _brightness = Brightness.light;
    }
    notifyListeners();
  }
}

ThemeData themeData(Brightness brightness) {
  return ThemeData(
    brightness: brightness,
    fontFamily: GoogleFonts.poppins().fontFamily,
    textTheme: TextTheme(
      titleLarge: GoogleFonts.poppins(
        fontSize: 32,
        fontWeight: FontWeight.w900,
      ),
      headlineMedium: GoogleFonts.poppins(
        fontSize: 20,
        fontWeight: FontWeight.w700,
      ),
    ),
    
  );
}
