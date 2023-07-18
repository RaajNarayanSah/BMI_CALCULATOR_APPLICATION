import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reusableIconButton.dart';
import 'package:flutter/material.dart';

class WeightAgeField extends StatelessWidget {
  const WeightAgeField(
      {super.key,
      required this.textA,
      required this.textB,
      required this.removeOnTap,
      required this.addOnTap});
  final String textA;
  final String textB;
  final void Function() removeOnTap;
  final void Function() addOnTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          textA,
          style: labelTextStyle,
        ),
        Text(
          textB,
          style: boldTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ReusableIconButton(
              icon: Icons.remove,
              onTap: removeOnTap,
            ),
            const SizedBox(
              width: 15,
            ),
            ReusableIconButton(
              icon: Icons.add,
              onTap: addOnTap,
            ),
          ],
        )
      ],
    );
  }
}
