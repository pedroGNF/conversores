import 'package:flutter/material.dart';

class TelaTemperatura extends StatelessWidget {
  const TelaTemperatura({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: const Color.fromARGB(255, 171, 157, 212),
          child: const Center(
            child: Text(
              "Conversor de Temperatura",
              style: TextStyle(),
            ),
          ),
        ),
      ),
    );
  }
}
