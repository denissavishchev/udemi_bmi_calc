import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'input_page.dart';

void main() {
  runApp(const BMICalc());
}

class BMICalc extends StatelessWidget {
  const BMICalc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF2D554A),
        scaffoldBackgroundColor: Color(0xFFfbc6d0),
      ),
      home: InputPage(),
    );
  }
}

