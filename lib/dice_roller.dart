import 'dart:math';

import 'package:first_app/styled_text.dart';
import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'assets/dice-images/dice-2.png';

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDiceImage,
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: () {
            activeDiceImage = 'assets/dice-images/dice-3.png';
            int diceRollNumber = Random().nextInt(6) + 1;
            setState(() {
              activeDiceImage = 'assets/dice-images/dice-$diceRollNumber.png';
            });
          },
          child: StyledText('Click'),
          style: TextButton.styleFrom(
            backgroundColor: Colors.tealAccent.shade400,
            textStyle: const TextStyle(fontSize: 28),
          ),
        ),
      ],
    );
  }
}
