import 'package:bmiculculator/bottom_button.dart';
import 'package:bmiculculator/calculatorbrain.dart';
import 'package:bmiculculator/constent.dart';
import 'package:bmiculculator/icon_botton.dart';
import 'package:bmiculculator/icon_content.dart';
import 'package:bmiculculator/result.dart';
import 'package:bmiculculator/reuseablecard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
enum Gander{
  male,
  female
}
class BmiCulculator extends StatefulWidget {
  const BmiCulculator({Key? key}) : super(key: key);

  @override
  _BmiCulculatorState createState() => _BmiCulculatorState();
}

class _BmiCulculatorState extends State<BmiCulculator> {
  // // we set the initial card colors for both card (male/female)
  // Color maleCardColor = kInactiveCardColor;
  // Color femaleCardColor = kInactiveCardColor;
  // // create a function which change both card colors on tap
  // void updateColor(Gander selectedGander ){
  //   if(selectedGander == Gander.male){
  //     if(maleCardColor == kInactiveCardColor){
  //       maleCardColor = kActiveCardColor;
  //       femaleCardColor = kInactiveCardColor;
  //     }else{
  //       maleCardColor = kInactiveCardColor;
  //     }
  //   }if(selectedGander == Gander.female){
  //     {
  //       if(femaleCardColor == kInactiveCardColor){
  //         femaleCardColor = kActiveCardColor;
  //         maleCardColor = kInactiveCardColor;
  //       }else{
  //         femaleCardColor = kInactiveCardColor;
  //       }
  //     }
  //   }
  //
  //
  // }

   Gander? selectedGander;
   int hight = 150;
   int wight = 60;
   int age = 20;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar:AppBar(
        title: const Text('BMI-CALCULATOR',style: TextStyle(fontSize:25),),
        backgroundColor: Colors.deepOrangeAccent,
      ) ,
      body: Column(

        children: [
          Expanded(
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Expanded(
                  //card 1 male card
                  child:ReuseableCard(
                    onTap: (){
                      setState(() {
                        selectedGander = Gander.male;
                      });
                    },
                    color: selectedGander == Gander.male ? kActiveCardColor : kInactiveCardColor,
                    childCard: const IconContent(
                      lable: 'Male',
                      icon: FontAwesomeIcons.mars,

                    ),)
                ),

                Expanded(
                  //card 2 female card
                  child: ReuseableCard(
                    onTap: (){
                      setState(() {
                        selectedGander = Gander.female;
                      });
                    },
                    color: selectedGander == Gander.female ? kActiveCardColor : kInactiveCardColor,
                    childCard: const IconContent(
                      lable: 'Female',
                      icon: FontAwesomeIcons.venus,

                    ),),
                ),
              ],
            ),
          ),

          Expanded(
            //3 card
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                Expanded(
                  child: ReuseableCard(
                    color: kInactiveCardColor,
                    childCard:  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children:  [
                        const Text('HEIGHT',style:kLableTextStyle,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children:  [
                            Text(hight.toString(),style:kNumberCardStyle,),
                            const Text('cm',style:kLableTextStyle,),


                                       ],
                                     ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                           activeTrackColor:kActiveCardColor,
                            inactiveTickMarkColor: Colors.grey,
                            thumbColor: Colors.yellow,
                            overlayColor: Colors.yellow.withOpacity(0.2),
                            thumbShape: const RoundSliderThumbShape(
                              enabledThumbRadius: 15.0
                            )

                          ),
                          child: Slider(
                              value: hight.toDouble(),
                              min:120 ,
                              max: 220,

                              onChanged: (double newValue){
                                setState(() {
                                  hight = newValue.round();
                                });
                              }
                          ),
                        ),
                                                ],
                                           ),
                    onTap: () {  },
                  ),
                ),

              ],
            ),
          ),

          Expanded(
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //card 4
                Expanded(
                  child:ReuseableCard(
                    color: kInactiveCardColor,
                    childCard:
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Text('WEIGHT',style: kLableTextStyle,),
                               Text(wight.toString(),style: kNumberCardStyle,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  RoundedIconButton(
                                    onPressed: (){
                                      setState(() {
                                        wight--;
                                      });
                                    },
                                    icons: FontAwesomeIcons.minus,
                                  ),
                                  const SizedBox(
                                    width: 10.0,
                                  ),
                                  RoundedIconButton(
                                    onPressed: (){
                                       setState(() {
                                         wight++;                                       });
                                    },
                                    icons: FontAwesomeIcons.plus,
                                  ),
                                ],
                              )
                            ],
                          ),
                    onTap: () {  },
                  ),
                ),

                Expanded(
                  child:ReuseableCard(
                    color: kInactiveCardColor,
                    childCard:
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text('AGE',style: kLableTextStyle,),
                         Text(age.toString(),style: kNumberCardStyle,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundedIconButton(
                              onPressed: (){
                                setState(() {
                                  age--;
                                });
                              },
                              icons: FontAwesomeIcons.minus,
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            RoundedIconButton(
                              onPressed: (){
                                setState(() {
                                  age++;
                                });
                              },
                              icons: FontAwesomeIcons.plus,
                            ),
                          ],
                        )
                      ],
                    ),
                    onTap: () {  },
                  ),
                ),
              ],
            ),
          ),
          BottomButton(onTap: (){
            calculatorbrain calc = calculatorbrain(height: hight, weight: wight);
            Navigator.push(context,MaterialPageRoute(builder: (context)=>Result(
              bmiResult: calc.calculateBMI(),
                  resultText: calc.getResult(),
                   interpretation: calc.getInterPretation(),
            )));
          }, butoonTittle: 'CALCULATOR')
        ],
      ),
    );
  }
}
