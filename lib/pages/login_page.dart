import "package:flutter/material.dart";

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Column(
          children: [
            Image.asset(
              'assets/images/login_image.png',
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Text(
              "Welcome",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Enter User Name", labelText: "User Name"),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                        hintText: "Enter Password", labelText: "Password"),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                      onPressed: () {
                        print("Hi ");
                      },
                      child: const Text("Login"))
                ],
              ),
            )
          ],
        ));
  }
}
