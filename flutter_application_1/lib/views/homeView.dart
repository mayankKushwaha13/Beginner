import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
          color: const Color.fromARGB(255, 177,202,164),
          child: Center(child: const Text("E-Mandi",
          style: TextStyle(
            fontSize: 40,
          color: Colors.black,
          fontWeight: FontWeight.bold,
          ),
          ),
          ),
        ),
      );
  }
}