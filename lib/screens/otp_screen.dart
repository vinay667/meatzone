import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meatzone/screens/home_screen.dart';
import 'package:meatzone/screens/parent_home_screen.dart';
import 'package:meatzone/widget/api_dialog.dart';
import 'package:meatzone/widget/pin.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:toast/toast.dart';

class OTPScreen extends StatefulWidget {
  String verficationID;
  FirebaseAuth _auth;
  OTPScreen(this.verficationID,this._auth);
  OTPState createState() => OTPState();
}

class OTPState extends State<OTPScreen> {
  String userOTP='';
  BoxDecoration get _pinPutDecoration {
    return BoxDecoration(
      border: Border.all(color: Color.fromRGBO(195,195,195,1)),
      borderRadius: BorderRadius.circular(17.0),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Image.asset('images/message.png', width: 85, height: 105),
          ),
          SizedBox(height: 5),
          Text(
            'Verification Code',
            style: TextStyle(
                fontSize: 25,
                color: Color.fromRGBO(37, 72, 99, 1),
                fontFamily: 'Roboto',
                fontWeight: FontWeight.bold),
          ),

          SizedBox(height: 7),

          Text(
            'OTP has been sent to your mobile number\nPlease verify',
            style: TextStyle(
                fontSize: 14,
                color: Color.fromRGBO(144,144,149,1),
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
            maxLines: 2,
          ),


          SizedBox(height: 12),

          Container(
            color: Colors.white,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: PinPut(
              fieldsCount: 6,
             onChanged: (val){
                userOTP=val.toString();
             },
             disabledDecoration:_pinPutDecoration ,
              selectedFieldDecoration: _pinPutDecoration.copyWith(
               border: Border.all(color: Colors.green,width: 2),
              ),
              followingFieldDecoration: _pinPutDecoration.copyWith(
                borderRadius: BorderRadius.circular(5.0),
                border: Border.all(color: Color.fromRGBO(195,195,195,1),width: 2),
              ),
              submittedFieldDecoration: _pinPutDecoration.copyWith(
                borderRadius: BorderRadius.circular(5.0),
                border: Border.all(color: Color.fromRGBO(195,195,195,1),width: 2),
              ),


            ),
          ),
          SizedBox(height: 12),
          Text(
            'Resend in 30 Sec',
            style: TextStyle(
                fontSize: 14,
                color: Color.fromRGBO(144,144,149,1),
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
            maxLines: 2,
          ),

          SizedBox(height: 18),

          InkWell(
            onTap: ()async{



            if(userOTP.length!=6)
              {
                Toast.show("OTP length must be 6 !!", context, duration: Toast.LENGTH_LONG, gravity:  Toast.BOTTOM,backgroundColor: Colors.red);
              }
            else{
              print(widget.verficationID);
              print(userOTP);
              final code = userOTP.trim();

              APIDialog.showAlertDialog(context, 'Verifying OTP...');
              try {
                AuthCredential credential = PhoneAuthProvider.getCredential(verificationId: widget.verficationID, smsCode: code);
                AuthResult result = await widget._auth.signInWithCredential(credential);

                FirebaseUser user = result.user;

                if(user != null){
                  Navigator.pop(context);
                  print('User logged');



                  _saveDetails();
                  Toast.show('Logged in Successfully !!', context,
                      duration: Toast.LENGTH_LONG,
                      gravity: Toast.BOTTOM,
                      backgroundColor: Colors.black);
                  Route route = MaterialPageRoute(
                      builder: (context) => BottomTabScreen());
                  Navigator.pushAndRemoveUntil(
                      context, route, (Route<dynamic> route) => false);





                }else{
                  print("Error");
                }


                // signInWithCredential(credential);
              }catch (exception){
                Navigator.pop(context);
                Toast.show("Invalid OTP !!", context, duration: Toast.LENGTH_LONG, gravity:  Toast.BOTTOM,backgroundColor: Colors.red);

                print(exception);
              }
            }

            },
            child:   Container(
              height: 45,
              margin: EdgeInsets.symmetric(horizontal: 25),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color.fromRGBO(235,33,37, 1)),
              child: Center(
                child: Text(
                  'VERIFY',
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          )

        ],
      ),
    );
  }

  _saveDetails()async{

    SharedPreferences preferences=await SharedPreferences.getInstance();
    preferences.setString('status', 'logged');
  }
}
