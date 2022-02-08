import 'package:bmiculculator/constent.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {

  final IconData icon;
  final String lable;

  const IconContent({required this.icon, required this.lable, });


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon,
        color: Colors.white,
        size: 80.0,),
        const SizedBox(height: 15.0,),
        Text(lable,style: kLableTextStyle,)

      ],
    );
  }
}
