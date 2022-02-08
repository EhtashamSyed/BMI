import 'dart:math';

class calculatorbrain {
  final int height;
  final int weight;
  late double _bmi;
  calculatorbrain ({required this.height,required this.weight});
  // function calculate bmi
  String calculateBMI (){
     _bmi = weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }
  // function to result
  String getResult(){
    if(_bmi >=25  ){
      return 'Over weight';
    }else if(_bmi > 18.5){
      return 'Normal';
    }else{
      return 'Underweight';
    }
  }
  // function to display messages
  String getInterPretation(){
    if(_bmi >=25  ){
      return 'You have a higher then more body weight.Exercise more';
    }else if(_bmi > 18.5){
      return 'you have normal body weight.Good Job!';
    }else{
      return 'You have less body weight.eat more';
    }
  }
}