import 'package:bmiculculator/constent.dart';
import 'package:bmiculculator/reuseablecard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'bottom_button.dart';

class Result extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String interpretation;
 Result({required this.bmiResult,required this.resultText,required this.interpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: const Text('BMI-CALCULATOR',style: TextStyle(fontSize:25),),
         backgroundColor: Colors.deepOrangeAccent,
       ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children:  [
          const Expanded(
              child: Center(
                child: Text('Your Result',style: kTittleTextStyle,),
              ),
          ),
          Expanded(
            flex: 5,
              child:
              ReuseableCard(
                  color: kInactiveCardColor,
                  childCard: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:  [
                      Text(resultText.toUpperCase(),
                        style: kResultTextStyle,),
                      Text(bmiResult,
                      style:  kBMITextStyle,),
                      Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(interpretation,textAlign: TextAlign.center,style: kLableTextStyle,),
                      )
                    ],

                  ),
                  onTap: (){}),
          ),
          const SizedBox(height: 20,),
          BottomButton(onTap: (){
            Navigator.pop(context);
          }, butoonTittle: 'RE-CALCULATE')
        ],
      ),
    );
  }
}
