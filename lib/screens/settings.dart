import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meatzone/colors/colors.dart';


class SettingsScreen extends StatefulWidget {
  SettingsState createState() => SettingsState();
}

class SettingsState extends State<SettingsScreen> {
  bool status = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 30),
          Center(
            child: Image.asset(
              'images/setting_2.png', width: 90, height: 70,),
          ),

          SizedBox(height: 30),

          Container(
            width: double.infinity,
            height: 60,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(9),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 8,
                      color: Colors.grey.withOpacity(0.4),
                      spreadRadius: 2
                  )
                ]),
            margin: EdgeInsets.symmetric(horizontal: 20),

            child: Row(
              children: <Widget>[

                SizedBox(width: 15),
                Image.asset('images/not_or.png', width: 25,
                  height: 25,
                  color: Color.fromRGBO(51, 51, 51, 1),),
                SizedBox(width: 12),
                Text(
                  'Notification Settings',
                  style: TextStyle(
                      fontSize: 17,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w600,
                      color: MyColor.defaultTextColor),
                ),
                Spacer(),
                Container(
                  margin: EdgeInsets.only(right: 10),
                  child: Switch(
                    value: status,
                    onChanged: (value) {
                      setState(() {
                        status = value;
                        print(status);
                      });
                    },
                    activeTrackColor: MyColor.themeColor.withOpacity(0.5),
                    activeColor: MyColor.themeColor,
                  ),
                )


              ],
            ),


          ),


          SizedBox(height: 25),

          InkWell(
            onTap: (){
             // Navigator.push(context, MaterialPageRoute(builder: (context)=>ChangePasswordScreen()));
            },
            child:   Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(9),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 8,
                        color: Colors.grey.withOpacity(0.4),
                        spreadRadius: 2
                    )
                  ]),
              margin: EdgeInsets.symmetric(horizontal: 20),

              child: Row(
                children: <Widget>[

                  SizedBox(width: 15),
                  Image.asset('images/lock_ic.png', width: 25,
                    height: 25,
                    color: Color.fromRGBO(51, 51, 51, 1),),
                  SizedBox(width: 12),
                  Text(
                    'Change Password',
                    style: TextStyle(
                        fontSize: 17,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w600,
                        color: MyColor.defaultTextColor),
                  ),
                  Spacer(),
                  Container(
                      margin: EdgeInsets.only(right: 15),
                      child: Icon(
                        Icons.arrow_forward_ios, color: MyColor.themeColor,
                        size: 30,)
                  )


                ],
              ),


            ),
          ),

          SizedBox(height: 25),

          InkWell(
            onTap: (){

             // Navigator.push(context, MaterialPageRoute(builder: (context)=>ManageBankScreen()));
            },
            child: Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(9),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 8,
                        color: Colors.grey.withOpacity(0.4),
                        spreadRadius: 2
                    )
                  ]),
              margin: EdgeInsets.symmetric(horizontal: 20),

              child: Row(
                children: <Widget>[

                  SizedBox(width: 15),
                  Image.asset('images/bank_ic.png', width: 25,
                    height: 25,
                    color: Color.fromRGBO(51, 51, 51, 1),),
                  SizedBox(width: 12),
                  Text(
                    'Edit Bank Details',
                    style: TextStyle(
                        fontSize: 17,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w600,
                        color: MyColor.defaultTextColor),
                  ),
                  Spacer(),
                  Container(
                      margin: EdgeInsets.only(right: 15),
                      child: Icon(
                        Icons.arrow_forward_ios, color: MyColor.themeColor,
                        size: 30,)
                  )


                ],
              ),


            ),
          ),

          SizedBox(height: 60),


          InkWell(
            onTap: (){
              showLogOutDialog(context);
            },
            child:  Container(

                width: 150,
                height: 43,
                margin: EdgeInsets.only(left: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(
                        width: 1, color: Colors.grey.withOpacity(0.5))
                ),


                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[

                    Image.asset('images/power_nav.png', width: 18, height: 18,color: MyColor.defaultTextColor,),

                    SizedBox(width: 10),


                    Text(
                      'Logout',
                      style: TextStyle(
                          fontSize: 17,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w700,
                          color: MyColor.defaultTextColor),
                    ),


                  ],
                )
            ),
          )

        ],
      ),


    );
  }


  showLogOutDialog(BuildContext context) {
    Widget cancelButton = FlatButton(
      child: Text("No"),
      onPressed: () {
        Navigator.pop(context);
      },
    );
    Widget continueButton = FlatButton(
      child: Text("Yes"),
      onPressed: () async {
        Navigator.pop(context);

      //  driverLOGOut();

      },
    );

    AlertDialog alert = AlertDialog(
      title: Text("Log Out"),
      content: Text("Are you sure you want to Log out ?"),
      actions: [
        cancelButton,
        continueButton,
      ],
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
