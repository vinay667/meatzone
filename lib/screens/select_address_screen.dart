import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meatzone/colors/colors.dart';
import 'package:meatzone/screens/add_address_screen.dart';
import 'package:meatzone/screens/payment_screen.dart';

class SelectAddressScreen extends StatefulWidget {
  SelectAddressState createState() => SelectAddressState();
}

class SelectAddressState extends State<SelectAddressScreen> {
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
                'Select Address',
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
                   padding: EdgeInsets.only(top: 30),
                   transform: Matrix4.translationValues(0.0, -40.0, 0.0),
                   color: Colors.white,
                   child:  ListView.builder(
                       padding: EdgeInsets.zero,
                       itemCount: 4,
                       physics: NeverScrollableScrollPhysics(),
                       shrinkWrap: true,
                       scrollDirection: Axis.vertical,
                       itemBuilder: (BuildContext context, int pos) {
                         return RadioListTile(
                             value: pos,
                             groupValue: value,
                             onChanged: (ind) => setState(() => value = ind),
                             title: Row(
                               children: <Widget>[

                                 Text(
                                   'House no 789 ,Rapti Nagar Ganga \nTola ,Gorakhpur',
                                   style: TextStyle(
                                       fontSize: 15,
                                       color: Color.fromRGBO(79,107,128,1),
                                       fontFamily: 'Roboto',
                                       fontWeight: FontWeight.w500),
                                   maxLines: 3,
                                   overflow: TextOverflow.ellipsis,

                                 ),

                               ],
                             )
                         );
                       }),
                 ),
               )
            ],
          ),
        ),
        Container(
          height: 56,
          color: Color.fromRGBO(37, 72, 99, 1),
          width: double.infinity,
          child: Row(
            children: <Widget>[
              Expanded(
                  child:
                 InkWell(
                   onTap: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>AddAddressScreen()));

                   },
                   child:  Container(
                       height: 41,
                       padding: EdgeInsets.symmetric(horizontal: 5),
                       margin: EdgeInsets.only(left: 10,top: 2,bottom: 2,right: 30),


                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(5),
                         color: Colors.white,
                       ),

                       child: Center(
                         child: Text(
                           'Add Address',
                           style: TextStyle(
                               fontSize: 14,
                               color: MyColor.defaultTextColor,
                               fontFamily: 'Roboto',
                               fontWeight: FontWeight.w700),
                         ),
                       )

                   ),
                 ),
                flex: 1,
              ),

              Expanded(
                child:     InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>PaymentScreen()));
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
                        'CONTINUE to Payment',
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
