import 'package:flutter/material.dart';

class TelaMoeda extends StatelessWidget {
  const TelaMoeda({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: const Color.fromARGB(255, 128, 214, 178),
          child: const Center(
            child: Text(
              "Conversor Monetário",
              style: TextStyle(),
            ),
          ),
        ),
      ),
    );
  }
}
