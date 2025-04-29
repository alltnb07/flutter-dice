import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDice = 5;
  void rollDice() {
  setState(() {
    currentDice = Random().nextInt(6) + 1; 
  });
}

  final randomizer = Random();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'lib/assets/images/dice-png-$currentDice.png',
          width: 200,
        ),
        const SizedBox(height: 30),
        TextButton(
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 28),
          ),
          onPressed: () {
            setState(() {
              currentDice = randomizer.nextInt(6) + 1; 
            });
          },
          child: const Text('Roll Dice'),
        ),
      ],
    );
  }
}
