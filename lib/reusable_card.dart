

import 'package:flutter/cupertino.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard({Key? key, required this.color, required this.cardChild, required this.onPress}) : super(key: key);

  final Color color;
  final Widget cardChild;
  final Function() onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}


