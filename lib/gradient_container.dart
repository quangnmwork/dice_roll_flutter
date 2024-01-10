import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

class CustomWidget extends StatelessWidget {
  final List<Color> colors;

  const CustomWidget({super.key, required this.colors});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: Alignment.topCenter,
          end: Alignment.topRight,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
