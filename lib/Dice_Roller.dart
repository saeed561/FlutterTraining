import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceROller extends StatefulWidget {
  const DiceROller({super.key});
  @override
  
  State<DiceROller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceROller> {
  var current_diceRoll = 2;
  void RollDice() {
    setState(
      () {
        current_diceRoll = randomizer.nextInt(6) + 1;
        print(
          "Random:$current_diceRoll",
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Image.asset(
        'assets/images/dice-$current_diceRoll.png',
        width: 200,
      ),
      const SizedBox(
        height: 20,
      ),
      TextButton(
        onPressed: RollDice,
        style: TextButton.styleFrom(
          foregroundColor: Colors.white,
          textStyle: const TextStyle(
            fontSize: 50,
          ),
        ),
        child: const Text("Roll dice"),
      )
    ]);
  }
}
