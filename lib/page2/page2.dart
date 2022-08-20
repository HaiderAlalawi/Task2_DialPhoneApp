import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:unicoding_task2/page1/Data.dart';

class page2 extends StatefulWidget {
  const page2({Key? key}) : super(key: key);


  @override
  _page2State createState() => _page2State();
}

class _page2State extends State<page2> {
  static int count=1;
  static double ratio=5;
  Color mycolor=MyColor.primary;
  Color mycolor2=MyColor.second;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle:
            SystemUiOverlayStyle(statusBarColor: Colors.transparent),
        backgroundColor: const Color(0xffffffff),
        elevation: 0,
        toolbarHeight: 60,
        iconTheme: IconThemeData(color: Colors.black),
        leading:IconButton(onPressed: (){
          Navigator.pop(context);
        },
          icon: Icon(Icons.arrow_back_ios_new_rounded),iconSize: 20,)
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Stack(
            children: [
              card1(),
              contactView(),
              AboveStack(),
        ]),
      ),
    );
  }

  Column card1() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Row(
            children: [
              Expanded(
                  child: Text(
                    "Contacts",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: MyColor.primary),
                  )),
              TextButton(
                  onPressed: () {
                    count=2;
                    ratio=2;
                    mycolor=MyColor.second;
                    mycolor2=MyColor.primary;
                    setState(() {});
                  },
                  style: TextButton.styleFrom(minimumSize: Size.zero),
                  child: Icon(
                    Icons.grid_view,
                    color: mycolor2,
                    size: 26,
                  )),
              TextButton(
                  onPressed: () {
                    count=1;
                    ratio=5;
                    mycolor2=MyColor.second;
                    mycolor=MyColor.primary;
                    setState(() {});
                  },
                  style: TextButton.styleFrom(minimumSize: Size.zero),
                  child: Icon(Icons.view_agenda_outlined,
                      color: mycolor, size: 26)),
            ],),),],);
  }





  Padding contactView() {
    return Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Expanded(
                child: GridView.count(
                    crossAxisCount: count,
                    crossAxisSpacing: 0,mainAxisSpacing: 0,
                    childAspectRatio: ratio,
                    children: Contact.contacts.map((e) => ContactDetail(number: e.phone)).toList()
                ),),);
  }


}




class ContactDetail extends StatelessWidget {
  const ContactDetail({
    Key? key, required this.number,
  }) : super(key: key);

  final String number;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Row(

          children: [
            Icon(
              Icons.person,
              size: 40,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Haider",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: MyColor.primary),
                    ),
                    Text(number,style: TextStyle(color: MyColor.second, fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
            TextButton(onPressed: (){},
                child:  Icon(
                  Icons.call,
                  color: Color(0Xff08df78),
                ))

          ],
        ),
      ),
    );
  }
}




class AboveStack extends StatelessWidget {
  const AboveStack({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 10,
                offset: Offset(0, 3)
            ),
          ],
        ),

        height: 80,
        width: 200,
        margin: EdgeInsets.only(bottom: 30),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextButton(onPressed: (){},
                child: Icon(Icons.groups_outlined,size: 26,color: Colors.grey,)
            ),
            TextButton(onPressed: (){},
                child: Icon(Icons.settings_outlined,size: 26,color: Colors.grey)
            )
          ],
        ),
      ),
    );
  }
}

