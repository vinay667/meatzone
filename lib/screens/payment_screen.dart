import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meatzone/colors/colors.dart';
import 'package:meatzone/screens/add_address_screen.dart';
import 'package:meatzone/screens/success_screen.dart';

class PaymentScreen extends StatefulWidget {
  PaymentState createState() => PaymentState();
}

class PaymentState extends State<PaymentScreen> {
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
                'Payment',
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
                  //  padding: EdgeInsets.only(top: 30),
                  transform: Matrix4.translationValues(0.0, -40.0, 0.0),
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      Image.asset('images/cards.jpg'),
                      SizedBox(height: 40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Text(
                              'Sub Total',
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Roboto',
                                color: MyColor.defaultTextColor,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 15),
                            child: Text(
                              '₹780',
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Roboto',
                                color: MyColor.defaultTextColor,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Text(
                              'Discount',
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Roboto',
                                color: MyColor.defaultTextColor,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 15),
                            child: Text(
                              '5%',
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Roboto',
                                color: MyColor.defaultTextColor,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Text(
                              'Shipping',
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Roboto',
                                color: MyColor.defaultTextColor,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 15),
                            child: Text(
                              '₹25',
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Gilroy',
                                color: MyColor.defaultTextColor,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          )
                        ],
                      ),
                      Padding(
                          padding: EdgeInsets.only(top: 7, left: 15, right: 15),
                          child: Divider(
                            color: Colors.black,
                          )),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Text(
                              'TOTAL',
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Roboto',
                                color: MyColor.defaultTextColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 15),
                            child: Text(
                              '₹900',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Roboto',
                                  color: MyColor.defaultTextColor),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      )
                    ],
                  ),
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
                child: InkWell(
                  onTap: () {
                    // Navigator.push(context, MaterialPageRoute(builder: (context)=>SuccessScreen()));
                  },
                  child: Container(
                      height: 41,
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      margin: EdgeInsets.only(
                          left: 10, top: 2, bottom: 2, right: 30),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Text(
                          'Save Card',
                          style: TextStyle(
                              fontSize: 14,
                              color: MyColor.defaultTextColor,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w700),
                        ),
                      )),
                ),
                flex: 1,
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SuccessScreen()));
                  },
                  child: Container(
                      height: 41,
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      margin: EdgeInsets.only(right: 10, top: 2, bottom: 2),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color.fromRGBO(235, 33, 37, 1),
                      ),
                      child: Center(
                        child: Text(
                          'BUY',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w600),
                        ),
                      )),
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
