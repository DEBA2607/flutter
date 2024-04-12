import "package:flutter/material.dart";
import "package:flutter_catalog/pages/home_page.dart";
import "package:flutter_catalog/pages/login_page.dart";
import "package:google_fonts/google_fonts.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            primaryColorLight: Colors.deepPurple,
            fontFamily: GoogleFonts.lato().fontFamily),
        themeMode: ThemeMode.light,
        darkTheme: ThemeData(
            primarySwatch: Colors.deepPurple, brightness: Brightness.dark),
        routes: {
          "/": (context) => const LoginPage(),
          "/login": (context) => const LoginPage(),
          "/home": (context) => const HomePage()
        });
  }
}
