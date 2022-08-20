import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:unicoding_task2/page1/contactbutton.dart';
import 'package:unicoding_task2/page1/Data.dart';
import 'package:unicoding_task2/page2/page2.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static String number = '';
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.transparent
        ),
        backgroundColor: const Color(0xfff0f0f0),
        elevation: 0,
        toolbarHeight: 20,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 70),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(number, style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: MyColor.primary ),maxLines: 1,),
              addToContacts(),
              numberButton(),
              actionButton(context),
            ],
          ),
        ),
      ),
    );
  }

  Padding actionButton(BuildContext context) {
    return Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(onPressed: (){
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const page2()),
                    );
                  },
                      child: Icon(
                          Icons.groups_outlined,size: 30,color: Colors.black54)),
                  TextButton(onPressed: (){},
                    style: ButtonStyle(minimumSize: MaterialStateProperty.all(Size.fromRadius(30)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
                        backgroundColor: MaterialStateProperty.all(Color(0Xff08df78))),

                    child: Icon(
                        Icons.call,size: 30,color: Colors.white),
                  ),
                  TextButton(onPressed: (){
                    number=number.substring(0,number.length-1);
                    setState(() {});
                  },
                      child: Icon(
                          Icons.backspace_outlined,size: 30,color: Colors.black54)),

                ],
              ),
            );
  }




  Container numberButton() {
    return Container(
              height: 350,
              child: GridView.count(crossAxisCount: 3,crossAxisSpacing: 40,mainAxisSpacing: 20,
                children:NumberData.numberbuttons.map((e) => TextButton(onPressed: (){
                  number=number+e.number;
                  setState(() {});
                }, child: NumberButton(number:e.number,text:e.detail))).toList(),
              ),
            );
  }




  Container addToContacts() {
    return Container(
              margin: EdgeInsets.only(top: 20,bottom: 30),
              alignment: Alignment.center,
              child: TextButton.icon(onPressed: (){
                Contact.contacts.add(Contact(number));
              },
                  icon: Icon(Icons.add,size:16,color: MyColor.third,),
                  label: Text('Add to contacts',style: TextStyle(fontSize:16,color: MyColor.third,),) ),
            );
  }



}
