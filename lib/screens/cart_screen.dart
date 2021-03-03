import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meatzone/colors/colors.dart';
import 'package:meatzone/screens/select_address_screen.dart';

class CartScreen extends StatefulWidget {
  CartState createState() => CartState();
}

class CartState extends State<CartScreen> {
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
                'Cart',
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
        Expanded(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              SizedBox(height: 20),
              ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: 4,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (BuildContext context, int pos) {
                    return Column(
                      children: <Widget>[
                        Card(
                          color: Colors.white,
                          elevation: 5,
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          child: Container(
                            height: 145,
                            child: Row(
                              children: <Widget>[
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  height: 145,
                                  width: 100,
                                  child: Image.asset(
                                    'images/banner3.jpg',
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                SizedBox(width: 20),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Padding(
                                            padding: EdgeInsets.only(top: 15),
                                            child: Text(
                                              'Chicken Curry',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Color.fromRGBO(
                                                      103, 128, 147, 1),
                                                  fontFamily: 'Roboto',
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                top: 10, right: 10),
                                            child: Icon(
                                              Icons.clear,
                                              color: Color.fromRGBO(
                                                  183, 197, 190, 1),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 2,
                                      ),
                                      Text(
                                        'Lotto LTD',
                                        style: TextStyle(
                                            fontSize: 13,
                                            color: Color.fromRGBO(
                                                103, 128, 147, 1),
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(height: 7),
                                      Text(
                                        '₹ 750',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Color.fromRGBO(
                                                103, 128, 147, 1),
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w800),
                                      ),
                                      SizedBox(height: 7),
                                      Container(
                                        width: 100,
                                        height: 37,
                                        margin: EdgeInsets.only(top: 10),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            color:
                                                Color.fromRGBO(235, 33, 37, 1)),
                                        child: Row(
                                          children: <Widget>[
                                            GestureDetector(
                                              onTap: () {},
                                              child: Container(
                                                  width: 30,
                                                  child: Center(
                                                      child: Image.asset(
                                                    'images/minus.png',
                                                    width: 11,
                                                    height: 15,
                                                    color: Colors.white,
                                                  ))),
                                            ),
                                            Container(
                                                width: 30,
                                                height: 30,
                                                color: Color.fromRGBO(
                                                    235, 33, 37, 1),
                                                child: Center(
                                                    child: Text(
                                                  '1',
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      color: Colors.white,
                                                      fontFamily: 'Roboto',
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ))),
                                            GestureDetector(
                                              onTap: () {},
                                              child: Container(
                                                  width: 30,
                                                  child: Center(
                                                      child: Image.asset(
                                                    'images/add.png',
                                                    width: 12,
                                                    height: 12,
                                                    color: Colors.white,
                                                  ))),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    );
                  }),
              Padding(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  child: Divider(
                    color: MyColor.grey,
                  )),
              Container(
                width: double.infinity,
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  'PRICE DETAIL (4 items)',
                  style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                      color: MyColor.defaultTextColor),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      'Cart Sub Total',
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
                      'Delivery Charges',
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
                      'Rs.85',
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
        Container(
          height: 56,
          color: Color.fromRGBO(37, 72, 99, 1),
          width: double.infinity,
          child: Row(
            children: <Widget>[
              Expanded(
                  child: Center(
                child: Text(
                  '₹780',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Roboto',
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),flex: 1,
              ),

              Expanded(
                child:     InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SelectAddressScreen()));

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
                        'CONTINUE',
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w600),
                      ),
                    )

                  ),
                ),
              )


            ],
          ),
        )
      ],
    ));
  }
}
