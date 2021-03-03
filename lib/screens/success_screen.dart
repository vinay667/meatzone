import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meatzone/colors/colors.dart';
import 'package:meatzone/screens/add_address_screen.dart';
import 'package:meatzone/screens/parent_home_screen.dart';
import 'package:meatzone/screens/payment_screen.dart';

class SuccessScreen extends StatefulWidget {
  SuccessState createState() => SuccessState();
}

class SuccessState extends State<SuccessScreen> {
  int value;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        Container(
          height: 80,
          padding: EdgeInsets.only(left: 15, right: 20, top: 15),
          width: double.infinity,
          color: Color.fromRGBO(37, 72, 99, 1),
          child: Row(
            children: <Widget>[
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.keyboard_backspace,
                    color: Colors.white, size: 27),
              ),
              SizedBox(
                width: 25,
              ),
              Text(
                'Success',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.w500),
              ),
              Spacer(),
              Icon(
                Icons.notifications,
                color: Color.fromRGBO(199, 208, 215, 1),
                size: 27,
              ),
              SizedBox(
                width: 15,
              ),
              Icon(
                Icons.share,
                color: Color.fromRGBO(199, 208, 215, 1),
                size: 27,
              ),
              SizedBox(
                width: 15,
              ),
              Icon(
                Icons.search,
                color: Color.fromRGBO(199, 208, 215, 1),
                size: 27,
              ),
            ],
          ),
        ),

        Container(
          color: Color.fromRGBO(37, 72, 99, 1),
          height: 30,

        ),

        Expanded(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              SizedBox(height: 10),
               Card(
                 margin: EdgeInsets.symmetric(horizontal: 20),
                 elevation: 6,
                 child: Container(
                   padding: EdgeInsets.only(top: 50),
                   transform: Matrix4.translationValues(0.0, -40.0, 0.0),
                   color: Colors.white,
                   child: Column(
                     children: <Widget>[
                       Container(
                         width: 200,
                         height: 200,
                         decoration: BoxDecoration(
                           color: Color.fromRGBO(248,248,248,1),
                           shape: BoxShape.circle
                         ),

                         child: Container(
                           margin: EdgeInsets.all(40),
                           decoration: BoxDecoration(
                               color: Color.fromRGBO(238,238,238,1),
                               shape: BoxShape.circle
                           ),

                           child: Center(
                             child: Image.asset('images/thumb.png'),
                           ),

                         ),

                       ),


                       SizedBox(height: 35),


                       Text(
                         'Confirmation',
                         style: TextStyle(
                             fontSize: 23,
                             color: MyColor.defaultTextColor,
                             fontFamily: 'Roboto',
                             fontWeight: FontWeight.w600),
                       ),

                       SizedBox(height: 10),
                       Text(
                         'You have successfully\ncompleted your payment procedure',
                         style: TextStyle(
                             fontSize: 15,
                             color: MyColor.defaultTextColor,
                             fontFamily: 'Roboto',
                             fontWeight: FontWeight.w400),
                         maxLines: 2,
                         overflow: TextOverflow.ellipsis,
                         textAlign: TextAlign.center,
                       ),

                     ],
                   )
                 ),
               )
            ],
          ),
        ),
        Container(
          height: 56,
          padding: EdgeInsets.symmetric(horizontal: 20),
          color: Color.fromRGBO(37, 72, 99, 1),
          width: double.infinity,
          child: Row(
            children: <Widget>[


              Expanded(
                child:     InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomTabScreen()));
                  },
                  child:  Container(
                    height: 41,
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    margin: EdgeInsets.only(right: 10,top: 2,bottom: 2),


                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color.fromRGBO(235,33,37,1),
                    ),

                    child: Center(
                      child: Text(
                        'back to Home',
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w600),
                      ),
                    )

                  ),
                ),
                flex: 1,
              )


            ],
          ),
        )
      ],
    ));
  }
}
