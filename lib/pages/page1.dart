import 'package:dot_indicator/pages/page2.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';
import 'dart:async';
class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  
  bool rostYolgon=false;

  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          Container(
            padding: EdgeInsets.only(top: 250),
            child: Center(

              child: Expanded(
                flex: 7,
                  child: SvgPicture.asset("assets/svg/logo.svg")),
            ),
          ),
          Expanded(
            flex: 1,
              child: Container(
                padding: EdgeInsets.only(top: 200),
                child: TextButton(
                  onPressed: (){
                    setState(() {
                      rostYolgon=true;
                    });
                    Future.delayed(Duration(seconds: 4), (){
                          setState(() {
                            rostYolgon=false;
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Page2()));
                          });
                       });
                  },
                  child:rostYolgon
                      ? SizedBox(child: CircularProgressIndicator(color: Colors.white,))
                      : Text("Next"),
                ),

              )),
        ],
      ),

    );
  }
}
