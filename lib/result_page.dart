import 'package:flutter/material.dart';

import 'const.dart';
import 'mywidgets.dart';



class ResultsPage extends StatelessWidget {

  final String? bmiResult, resultTxt, interpretaion;

  const ResultsPage({super.key, @required this.bmiResult, @required this.resultTxt, @required this.interpretaion});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(15),
              child: const Center(child:  Text("Your Result", style: kTitleTextStyle)),
            ),
          ),
           Expanded(
            flex: 5,
            child: ReusableCard(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                   Text(
                    resultTxt!,
                    style: kResultTextStyle,
                  ),
                   Text(
                    bmiResult!.toUpperCase(),
                    style: kBMITextStyle,
                  ),
                  const Column(
                    children:  [
                      Text(
                        "Normal BMI Range",
                        style: kGrayBodyTextStyle,
                      ),
                      Text(
                        "18.5 - 25 kg/m2",
                        style: kBodyBodyTextStyle,
                      ),
                    ],
                  ),
                   Padding(
                     padding: const EdgeInsets.all(16.0),
                     child: Text(
                       interpretaion!,
                      style: kBodyBodyTextStyle,
                      textAlign: TextAlign.center,
                                       ),
                   ),
                ],
              ),
            ),
          ),
          BottomButton(
            title: "Re - Calculate",
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
