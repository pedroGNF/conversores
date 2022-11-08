import 'package:flutter/material.dart';
import 'package:helloworld/distancia.dart';
import 'package:helloworld/moeda.dart';
import 'package:helloworld/temperatura.dart';

void main() {
  runApp(const TabBarDemo());
}

class TabBarDemo extends StatelessWidget {
  const TabBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.thermostat)),
                Tab(icon: Icon(Icons.attach_money)),
                Tab(icon: Icon(Icons.directions)),
              ],
            ),
            title: const Text('Conversores'),
          ),
          body: const TabBarView(
            children: [
              TelaTemperatura(),
              TelaMoeda(),
              TelaDistancia(),
            ],
          ),
        ),
      ),
    );
  }
}
