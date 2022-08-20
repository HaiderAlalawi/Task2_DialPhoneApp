
import 'package:flutter/material.dart';

class NumberData{
  final String number;
  final String detail;

  NumberData(this.number, this.detail);

  static List<NumberData> numberbuttons=[
    NumberData('1',''),
    NumberData('2','ABC'),
    NumberData('3','DEF'),
    NumberData('4','GHI'),
    NumberData("5",'JKL',),
    NumberData("6",'MNO',),
    NumberData( "7", 'PQRS',),
    NumberData( "8", 'TUV',),
    NumberData( "9", 'WXYZ',),
    NumberData( "*", '',),
    NumberData( "0", '+',),
    NumberData( "#", '',),
  ];

}

class Contact {
  final String phone;
  Contact(this.phone);
  static List<Contact> contacts = [];

}

class MyColor{
  static final Color primary = Color(0xff585677);
  static final Color second = Color(0xff7a7a7a);
  static final Color third = Color(0xff08df78);
  static final Color underNumber = Colors.grey.shade400;
}
