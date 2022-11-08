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
      theme: ThemeData(
        colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: Color.fromARGB(255, 44, 160, 131),
          onPrimary: Color.fromARGB(255, 255, 255, 255),
          secondary: Color.fromARGB(255, 174, 230, 22),
          onSecondary: Color.fromARGB(255, 253, 189, 189),
          background: Color.fromARGB(255, 150, 86, 147),
          onBackground: Color.fromARGB(255, 148, 100, 211),
          surface: Color.fromARGB(255, 51, 129, 93),
          onSurface: Color.fromARGB(255, 153, 88, 155),
          error: Color.fromARGB(255, 153, 96, 96),
          onError: Color.fromARGB(255, 255, 0, 0),
        ),
      ),
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
