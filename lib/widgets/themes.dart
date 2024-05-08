import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:velocity_x/velocity_x.dart";

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      fontFamily: GoogleFonts.poppins().fontFamily,
      cardColor: Colors.white,
      canvasColor: creamColor,
      highlightColor: darkBluishColor,
      colorScheme: ColorScheme.light(secondary: darkBluishColor),
      appBarTheme: const AppBarTheme(
        color: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0.0,
      ));
  static ThemeData darktheme(BuildContext context) => ThemeData(
      fontFamily: GoogleFonts.poppins().fontFamily,
      cardColor: Colors.black,
      canvasColor: darkmodeColor,
      highlightColor: lightBluishColor,
      colorScheme: const ColorScheme.dark(secondary: Colors.white),
      appBarTheme: const AppBarTheme(
        color: Colors.black,
        iconTheme: IconThemeData(color: Colors.white),
        elevation: 0.0,
      ));

  static Color creamColor = const Color(0xfff5f5f5);
  static Color darkmodeColor = Vx.gray900;
  static Color darkBluishColor = const Color(0xff403b5f);
  static Color lightBluishColor = Vx.indigo500;
}
