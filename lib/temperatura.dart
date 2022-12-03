import 'package:flutter/material.dart';

class TelaTemperatura extends StatefulWidget {
  const TelaTemperatura({super.key});
  @override
  TempState createState() => TempState();
}

class TempState extends State<TelaTemperatura> {
  late double input;
  late double output;
  late bool fOrC;

  @override
  void initState() {
    super.initState();
    input = 0.0;
    output = 0.0;
    fOrC = true;
  }

  @override
  Widget build(BuildContext context) {
    TextField inputField = TextField(
      keyboardType: TextInputType.number,
      onChanged: (str) {
        try {
          input = double.parse(str);
        } catch (e) {
          input = 0.0;
        }
      },
      decoration: InputDecoration(
        labelText:
            "Input a Value in ${fOrC == false ? "Fahrenheit" : "Celsius"}",
      ),
      textAlign: TextAlign.center,
    );

    AppBar appBar = AppBar(
      title: const Text("Temperature Calculator"),
    );

    Container tempSwitch = Container(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        children: <Widget>[
          const Text("F"),
          Radio<bool>(
              groupValue: fOrC,
              value: false,
              onChanged: (v) {
                setState(() {
                  fOrC = v!;
                });
              }),
          const Text("C"),
          Radio<bool>(
              groupValue: fOrC,
              value: true,
              onChanged: (v) {
                setState(() {
                  fOrC = v!;
                });
              }),
        ],
      ),
    );

    Container calcBtn = Container(
      child: RaisedButton(
        child: const Text("Calculate"),
        onPressed: () {
          setState(() {
            fOrC == false
                ? output = (input - 32) * (5 / 9)
                : output = (input * 9 / 5) + 32;
          });
          showAboutDialog(context: context);
        },
      ),
    );

    return Scaffold(
      appBar: appBar,
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            inputField,
            tempSwitch,
            calcBtn,
          ],
        ),
      ),
    );
  }
}

// ignore: non_constant_identifier_names
RaisedButton({required Text child, required Null Function() onPressed}) {}
