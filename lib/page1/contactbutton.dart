import 'package:flutter/material.dart';
import 'package:unicoding_task2/page1/Data.dart';


class NumberButton extends StatelessWidget {
  const NumberButton({
    Key? key, required this.number, required this.text,
  }) : super(key: key);
  final String number;
  final String text;

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Text(number,style: TextStyle(fontSize: 30,color: MyColor.primary),),
        Text(text,style: TextStyle(fontSize: 12,color: MyColor.underNumber),),
      ],
    );
  }
}
