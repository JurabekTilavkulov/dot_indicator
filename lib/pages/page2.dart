import 'package:dot_indicator/model.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {

  List<ModelClass> list=[];
  int currentPosition=0;
  PageController pageController=PageController();

  @override
  Widget build(BuildContext context) {



    
    list.add(ModelClass("assets/svg/orqafon.svg", "assets/svg/odam1.svg", "Route building", "Drag the mark to a specific point in the map or enter tour street to build route."));
    list.add(ModelClass("assets/svg/orqafon.svg", "assets/svg/odam2.svg", "Trip confirmation", "After building route you will be suggested a car, price and arrifal time."));
    list.add(ModelClass("assets/svg/orqafon.svg", "assets/svg/odam3.svg", "Waiting for a taxi", "Wait for a taxi at the point you have marked. A car will be there in a few minutes."));


    return Scaffold(
      body: Column(
        children: [
          Container(   // eng tepadagi Skip button bu
            padding: EdgeInsets.only(top: 60,left: 300),
            child: TextButton(
              onPressed: (){

              },
              child: Text("Skip",style: TextStyle(color: Colors.blue,fontSize: 18),),
            ),
          ),    // eng tepadagi Skip button bu
          Container(     //asosiy joyi PageView joyi
            height: 500,
            width: 350,
            child:  PageView(
              controller: pageController,
              onPageChanged: (num){
                setState(() {
                  currentPosition=num;
                });
              Container(
                
              );


              },
              children: [
                Container(
                  color: Colors.greenAccent,

                ),
                Container(
                  color: Colors.blue,

                ),
                Container(
                  color: Colors.yellow,

                ),

              ],
            ),
          ),    //asosiy joyi PageView joyi
          Container(         //Dot Indicator joy
            child: SmoothPageIndicator(
              controller: pageController,
              count: 3,
              effect: JumpingDotEffect(
                activeDotColor: Colors.blue,
                dotColor: Colors.black26,
                dotHeight: 10,
                dotWidth: 10,
                verticalOffset: 20
              ),
              ),



          ),    //  Dot Indicator joyi
          Container(         // Start button
            padding: EdgeInsets.only(top: 50),

            child: currentPosition==2 ? Container(child:GestureDetector(

             onTap: (){

             },
              child: Container(
                width: 200,
                height: 40,

                child: Center(
                   child: Text("Start",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,letterSpacing: 4),)
                ),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.blue),

              ),
            )): null
          )     // Start button

        ],

      )

    );
  }

}
