import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'assets/images/dice-2.png';

  void rollDice() {
    setState(() {
      // rerun the build method
      int diceNumber = Random().nextInt(6) + 1;
      // Random object can be saved in a var to make code optimized
      activeDiceImage = 'assets/images/dice-$diceNumber.png';
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDiceImage,
          width: 200,
        ),
        // const SizedBox(height: 20,) for padding
        TextButton(
            onPressed: rollDice, // or (){ statement }... anonumns function
            style: TextButton.styleFrom(
              padding: const EdgeInsets.only(top: 30),
              foregroundColor: Colors.black,
              textStyle: const TextStyle(
                fontSize: 30,
              ),
            ),
            child: const Text("Roll the Dice"))
      ],
    );
  }
}
