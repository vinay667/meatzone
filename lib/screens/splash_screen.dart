import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meatzone/screens/landing_screen.dart';
import 'package:meatzone/screens/parent_home_screen.dart';
class SplashScreen extends StatefulWidget
{
  String status;
  SplashScreen(this.status);
  SplashState createState()=>SplashState();
}
class SplashState extends State<SplashScreen>
{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Colors.white,
     body: Container(
       //transform: Matrix4.translationValues(0.0, -70.0, 0.0),
      // color: Colors.pink,
       width: double.infinity,
       height: double.infinity,

       child: Stack(
         children: <Widget>[

           Container(
             transform: Matrix4.translationValues(0.0, 65.0, 0.0),
             //margin: EdgeInsets.only(top: 25),
             child: Image.asset('images/vertical_lin.png'),
           ),

          Center(
            child:  Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                Image.asset('images/logo.png'),
                SizedBox(height: 15),

                Text('FRESHNESS GUARANTEED',style: TextStyle(
                    fontSize: 13,
                    color: Color.fromRGBO(156,156,156,1),
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.w900


                ),),














              ],
            ),
          )




         ],
       )
     )

   );
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds: 3),
            () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => widget.status=='logged'?BottomTabScreen():LandingScreen())));
  }
  
}
