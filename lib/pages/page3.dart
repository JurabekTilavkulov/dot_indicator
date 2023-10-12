import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 150,
            width: 200,
            padding: EdgeInsets.only(top: 50,left: 20),
            child: Text("Sign in",style: TextStyle(fontSize: 34,fontWeight: FontWeight.bold),),
          ),
          Container(
            padding: EdgeInsets.only(top: 20,left: 20),
            width: 350,
            height: 80,

            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 35, height:35,
                    child: Image.asset("assets/png/bayroq.png",width: 20)),
                Container(
                  padding: EdgeInsets.only(left: 10,top: 10),
                    width: 60, height: 50,child: Text("+375",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),)),
                Container(
                  width: 150,

                    height: 50,
                    child: TextField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        hintText: "Phone number",
                        hintStyle: TextStyle(fontSize: 17,color: Colors.grey),
                        filled: true,
                        fillColor: Colors.white,

                ),))

              ],
            )
          ),
          Container(
            width: 340,
            padding: EdgeInsets.only(left: 20,top: 20),
            height: 100,
            child: Text("We will send a SMS to your phone number containing confirmation code."),
          )

        ],
      ),

    );
  }
}
