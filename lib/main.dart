import "package:flutter/material.dart";
import "package:flutter_catalog/pages/home_page.dart";
import "package:flutter_catalog/pages/login_page.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primaryColorLight: Colors.deepPurple),
        themeMode: ThemeMode.light,
        darkTheme: ThemeData(
            primarySwatch: Colors.deepPurple, brightness: Brightness.dark),
        routes: {
          "/": (context) => const HomePage(),
          "/login": (context) => const LoginPage(),
        });
  }
}
