import 'package:flutter/material.dart';

class ReuseableCard  extends StatelessWidget {
  //property color
   final Color color;
   final Widget childCard;
   final VoidCallback onTap;
   const ReuseableCard ({required this.color , required this.childCard,required this.onTap});

   @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 400,
        child: childCard,
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0)
        ),

      ),
    );
  }
}
