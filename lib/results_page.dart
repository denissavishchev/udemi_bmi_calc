import 'package:bmi_calc/bottomButton.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:bmi_calc/reusable_card.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key, required this.bmiResult, required this.resultText, required this.interpretation}) : super(key: key);

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kInactiveCardColor,
        title: const Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
            child: const Center(
              child: Text(
                'You Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          ),
          Expanded(
            flex: 5,
              child: ReusableCard(
                color: kInactiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(resultText.toUpperCase(), style: kResultTextStyle,),
                    Text(bmiResult,style: kBMITextStyle,),
                    Text(interpretation, style: kBodyTextStyle, textAlign: TextAlign.center,)
                  ],
                ), onPress: () {},
              ),),
          BottomButton(
              onTap: (){
                Navigator.pop(context);
              },
              buttonTitle: 'RE-CALCULATE'),
        ],
      ),
    );
  }
}
