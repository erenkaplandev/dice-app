import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

void zarAt () {

  var leftDiceNumber = 5;
  var rightDiceNumber = 3;

  leftDiceNumber = Random().nextInt(6) + 1;
  rightDiceNumber = Random().nextInt(6) + 1;
  print('sol zar numarası = $leftDiceNumber');
  print('sağ zar numarası = $rightDiceNumber');
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftDiceNumber = 5;
  var rightDiceNumber = 3;

  void zarAt () {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
      print('sol zar numarası = $leftDiceNumber');
      print('sağ zar numarası = $rightDiceNumber');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextButton(
                    onPressed: () {
                      zarAt();
                    },
                    child: Image.asset('images/dice$leftDiceNumber.png')
                ),
              )
          ),
          Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextButton(
                  child: Image.asset('images/dice$rightDiceNumber.png'),
                  onPressed: () {
                    zarAt();
                  },
                ),
              )
          ),
        ],
      ),
    );
  }
}
