import 'package:flutter/material.dart';

class RoundedIconButton extends StatelessWidget {
   final IconData icons;
   final onPressed;
   const RoundedIconButton ({required this.icons, required this.onPressed});


  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        onPressed: onPressed,
      elevation: 6.0,
      fillColor: Colors.lime,
      shape: const CircleBorder(),
      child: Icon(
          icons,
        color: Colors.black,
      ),
      constraints: const BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
    );
  }
}
