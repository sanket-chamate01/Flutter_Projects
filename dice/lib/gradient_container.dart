import 'package:flutter/material.dart';
import 'package:dice/style_text.dart';
import 'package:dice/dice_roller.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  final Color color1, color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      // child: const Center(child: StyleText("Roll the Dice")),
      child: Center(child: DiceRoller()),
    );
  }

  // const GradientContainer({super.key, required.color});

  // final List<Color> color;
  // @override
  // Widget build(context) {
  //   return Container(
  //     decoration: BoxDecoration(
  //       gradient: LinearGradient(
  //         colors: color,
  //         begin: Alignment.topCenter,
  //         end: Alignment.bottomCenter,
  //       ),
  //     ),
  //     child: const Center(child: StyleText("Roll the Dice")),
  //   );
  // }
}
