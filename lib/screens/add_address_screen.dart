import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meatzone/colors/colors.dart';
import 'package:meatzone/widget/input_widget_app.dart';

class AddAddressScreen extends StatefulWidget {
  AddAddressState createState() => AddAddressState();
}

class AddAddressState extends State<AddAddressScreen> {
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
                'Add Address',
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
            child: Column(
          children: <Widget>[
            Container(
              transform: Matrix4.translationValues(0.0, -30.0, 0.0),
              child: Card(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  elevation: 6,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Create Address',
                          style: TextStyle(
                              fontSize: 22,
                              color: Color.fromRGBO(73, 73, 73, 1),
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(height: 25),
                        TextInput4('Name'),
                        TextInput4('Address lane'),
                        TextInput4('City'),
                        TextInput4('Postal Code'),
                        TextInput4('Phone Number'),
                        SizedBox(height: 35),
                      ],
                    ),
                  )),
            )
          ],
        )),
        Container(
          height: 56,
          color: Color.fromRGBO(37, 72, 99, 1),
          width: double.infinity,
          child: Row(
            children: <Widget>[
              Expanded(
                child: Container(
                    height: 41,
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    margin:
                        EdgeInsets.only(left: 10, top: 2, bottom: 2, right: 30),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Text(
                        'Save Address',
                        style: TextStyle(
                            fontSize: 14,
                            color: MyColor.defaultTextColor,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w700),
                      ),
                    )),
                flex: 1,
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    // Navigator.push(context, MaterialPageRoute(builder: (context)=>CartScreen()));
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
                          'CONTINUE to Payment',
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
