import 'dart:math';
import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 1;

  void rollDice() {
    setState(() {
      currentDiceRoll= Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          height: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 24,
            ),
          ),
          child: const Text(
            'Press to roll',
          ),
        ),
      ],
    );
  }
}


// class StyledText extends StatefulWidget {
//   const StyledText({super.key});

//   @override
//   State<StyledText> createState() => _StyledTextState();
// }

// class _StyledTextState extends State<StyledText> {
//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }