import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(Dice());

class Dice extends StatefulWidget {
  const Dice({super.key});

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int leftDice = 1;
  int rightDice = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        title: Text('Dice game'),
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(32.0),
              child: Row(
                children: [
                  Expanded(
                    child: Image.asset('image/dice$leftDice.png'),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: Image.asset('image/dice$rightDice.png'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 60.0),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll(Colors.orangeAccent),
                  padding: MaterialStatePropertyAll(
                      EdgeInsets.fromLTRB(25, 10, 25, 10))),
              onPressed: () {
                setState(() {
                  leftDice = Random().nextInt(6) + 1;
                  rightDice = Random().nextInt(6) + 1;
                });
              },
              child: Icon(Icons.play_arrow),
            ),
          ],
        ),
      ),
    );
  }
}
