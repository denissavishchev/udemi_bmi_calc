import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({required this.onTap, required this.buttonTitle});

  final Function() onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
            child: Text(
              buttonTitle,
              style: kLargeButtonTextStyle,
            )),
        decoration: const BoxDecoration(
          color: kBottomContainerColor,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              topLeft: Radius.circular(20)),
        ),
        margin: const EdgeInsets.only(top: 10),
        padding: const EdgeInsets.only(bottom: 20),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}