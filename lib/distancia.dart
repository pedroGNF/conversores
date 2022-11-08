import 'package:flutter/material.dart';

class TelaDistancia extends StatelessWidget {
  const TelaDistancia({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: const Color.fromARGB(255, 46, 156, 145),
          child: const Center(
            child: Text(
              "Conversor de Distância",
              style: TextStyle(),
            ),
          ),
        ),
      ),
    );
  }
}
