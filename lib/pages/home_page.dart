import "package:flutter/material.dart";
import "package:flutter_catalog/widgets/drawer.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    num days = 15;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        title: const Text("Catalog App"),
      ),
      body: Center(child: Text("Welcome to $days days of Flutter")),
      drawer: MyDrawer(),
    );
  }
}
