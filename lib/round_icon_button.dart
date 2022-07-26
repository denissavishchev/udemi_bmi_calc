import 'package:flutter/material.dart';
import 'constants.dart';

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({Key? key, required this.icon, required this.onPressed})
      : super(key: key);

  final IconData icon;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      child: Icon(icon),
      elevation: 9,
      constraints: const BoxConstraints.tightFor(
        width: 56,
        height: 56,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      fillColor: kActiveCardColor,
    );
  }
}
