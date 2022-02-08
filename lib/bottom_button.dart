import 'package:bmiculculator/constent.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final onTap;
  final String butoonTittle;
  const BottomButton ({required this.onTap, required this.butoonTittle});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,

      child: Expanded(
        child: GestureDetector(
          onTap: onTap,
          child: Container(
            child: Center(
              child: Text(butoonTittle,style: kBottomButtonStyle,),
            ),
            color: kButtonColor,
            margin: const EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: 10,
          ),
        ),
      ),
    );
  }
}


