import 'package:first_app/Dice_Roller.dart';
import 'package:flutter/material.dart';

var startAlignment = AlignmentDirectional.topStart;
var endAlignment = AlignmentDirectional.bottomEnd;

class GradianContainer extends StatelessWidget {
  const GradianContainer(
    this.color1,
    this.color2, {
    super.key,
  });
  final Color color1;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: startAlignment,
          end: endAlignment,
          colors: [color1, color2],
        ),
      ),
      child: const Center(
        child: DiceROller(),
      ),
    );
  }
}
