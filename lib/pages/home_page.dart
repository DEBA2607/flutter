import "package:flutter/material.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    num days = 15;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalog App"),
      ),
      body: Center(child: Text("Welcome to $days days of Flutter")),
      drawer: const Drawer(),
    );
  }
}
