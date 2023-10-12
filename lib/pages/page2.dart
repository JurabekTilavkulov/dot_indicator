
import 'package:dot_indicator/pages/page3.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:svg_flutter/svg.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {


  int currentPosition=0;
  PageController pageController=PageController();

  @override
  Widget build(BuildContext context) {





    return Scaffold(
      body: Column(
        children: [
          Container(   // eng tepadagi Skip button bu
            padding: EdgeInsets.only(top: 60,left: 300),
            child: TextButton(
              onPressed: (){
                setState(() {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Page3()));
                });
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
              },
              children: [
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 310,
                        child: Stack(
                          children: [
                            Positioned(child: SvgPicture.asset("assets/svg/orqafon.svg")),
                            Positioned(
                                top: 20,
                                left: 120,
                                child: SvgPicture.asset("assets/svg/odam1.svg")),
                          ],
                        )
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 80),
                        child: Text("Route building",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28,fontStyle: FontStyle.normal),)
                      ),
                      Container(
                        width: 343,
                        padding: EdgeInsets.only(top: 10),
                        child:Text("Drag the mark to a specific point in the map or enter tour street to build route.",style: TextStyle(color: Colors.grey,fontSize: 17),)
                      )

                      ],
                  ),


                ),
                Container(
                  child: Column(
                    children: [
                      Container(height: 310,child: Stack(
                        children: [
                          Positioned(child: SvgPicture.asset("assets/svg/orqafon.svg")),
                          Positioned(
                              top: 20,
                              left: 120,
                              child: SvgPicture.asset("assets/svg/odam2.svg")),
                        ],
                      )),
                      Container(
                        padding: EdgeInsets.only(top: 80),
                        child: Text("Trip confirmation",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28,fontStyle: FontStyle.normal),)
                      ),
                      Container(
                        width: 343,
                        padding: EdgeInsets.only(top: 10),
                        child:Text("After building route you will be suggested a car, price and arrifal time.",style: TextStyle(color: Colors.grey,fontSize: 17),)
                      )

                      ],
                  ),


                ),
                Container(
                  child: Column(
                    children: [
                      Container(height: 310,
                          child: Stack(
                           children: [
                            Positioned(child: SvgPicture.asset("assets/svg/orqafon.svg")),
                            Positioned(
                              top: 20,
                              left: 20,
                              child: SvgPicture.asset("assets/svg/odam3.svg")),
                        ],
                      )),

                      Container(
                        padding: EdgeInsets.only(top: 80),
                        child: Text("Waiting for a taxi",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28,fontStyle: FontStyle.normal),)
                      ),
                      Container(
                        width: 343,
                        padding: EdgeInsets.only(top: 10),
                        child:Text("Wait for a taxi at the point you have marked. A car will be there in a few minutes.",style: TextStyle(color: Colors.grey,fontSize: 17),)
                      )

                      ],
                  ),


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
               setState(() {
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>Page3()));
               });
             },
              child: Container(
                width: 300,
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
