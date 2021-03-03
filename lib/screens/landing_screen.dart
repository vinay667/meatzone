import 'package:country_code_picker/country_code.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meatzone/screens/otp_screen.dart';
import 'package:meatzone/widget/api_dialog.dart';
import 'package:meatzone/widget/clipper.dart';
import 'package:toast/toast.dart';

class LandingScreen extends StatefulWidget {
  LandingState createState() => LandingState();
}

class LandingState extends State<LandingScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  final _scaffoldKey = GlobalKey<ScaffoldState>();
  AuthCredential credential;
  final TextEditingController _phoneNumberController = TextEditingController();
  final _codeController = TextEditingController();
  String _verificationId;
  //String dropDownPhone
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          SizedBox(height: 55),
          Center(
            child: Image.asset('images/logo.png'),
          ),
          SizedBox(height: 10),

          Center(
            child:  Text(
              'FRESHNESS GUARANTEED',
              style: TextStyle(
                  fontSize: 13,
                  color: Color.fromRGBO(156, 156, 156, 1),
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.w900),
            ),
          ),
         // Spacer(),

           Container(
             transform: Matrix4.translationValues(0.0, -70.0, 0.0),
             //margin: EdgeInsets.only(bottom: 25),
             child: Image.asset('images/vertical_lin.png'),
           ),




           Container(
             transform: Matrix4.translationValues(0.0, 20.0, 0.0),
             height: 320,
             child: Stack(
               children: <Widget>[


               /*  RotationTransition(
                     turns: new AlwaysStoppedAnimation(180 / 360),
                     child:  ClipPath(
                       clipper: MultiplePointedEdgeClipper(),
                       child: Container(
                         width: double.infinity,
                         decoration: new BoxDecoration(
                             gradient: new LinearGradient(
                                 begin: Alignment.topRight,
                                 end: Alignment.bottomLeft,
                                 colors: [
                                   Color.fromRGBO(244, 164, 166, 1),
                                   Color.fromRGBO(235, 33, 37, 1),
                                   Color.fromRGBO(235, 33, 37, 1),
                                 ])),

                       ),
                     )
                 ),*/
                 
                 Container(
                   width:double.infinity,
                  // height: 200,
                   child: Image.asset('images/red_bg.png',fit: BoxFit.fill,),
                 ),
                 
                 
                 

                 Column(
                   children: <Widget>[
                     SizedBox(
                       height: 80,
                     ),
                     Text(
                       'Getting Started',
                       style: TextStyle(
                           fontSize: 27,
                           color: Colors.white,
                           fontFamily: 'Roboto',
                           fontWeight: FontWeight.w700),
                     ),
                     SizedBox(height: 10),
                     Text(
                       'Sign up for new account,enter your Mobile',
                       style: TextStyle(
                         fontSize: 15,
                         color: Colors.white,
                         fontFamily: 'Roboto',
                       ),
                       maxLines: 2,
                       textAlign: TextAlign.center,
                     ),
                     SizedBox(height: 28),
                     Container(
                         height: 45,
                         margin: EdgeInsets.symmetric(horizontal: 25),
                         decoration: BoxDecoration(
                             border: Border.all(color: Colors.white, width: 1),
                             borderRadius: BorderRadius.circular(5)),
                         child: Row(
                           children: <Widget>[
                             Expanded(
                               child: TextFormField(
                                 controller:_phoneNumberController,
                                 //maxLength: 12,
                                 keyboardType: TextInputType.number,
                                 style: TextStyle(
                                     color: Colors.white,
                                     fontSize: 12,
                                     decoration: TextDecoration.none,
                                     fontFamily: 'Lato'),
                                 decoration: InputDecoration(
                                   //contentPadding: const EdgeInsets.only(left: 10.0),
                                   border: InputBorder.none,
                                   hintText: 'Enter Mobile',
                                   prefixIcon: Container(
                                     width: 80,
                                     child: Row(
                                       children: <Widget>[
                                         Container(
                                           margin: EdgeInsets.only(left: 10),
                                           width: 30,
                                           child: CountryCodePicker(
                                             onChanged: _onCountryChange,
                                             // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                                             initialSelection: '+91',
                                             favorite: ['+39', 'FR'],
                                             textStyle: TextStyle(
                                                 color: Colors.white,
                                                 fontSize: 11,
                                                 decoration: TextDecoration.none,
                                                 fontFamily: 'Lato'),
                                             showFlag: false,
                                             showFlagDialog: true,
                                             // optional. Shows only country name and flag
                                             // optional. Shows only country name and flag when popup is closed.
                                             // showOnlyCountryWhenClosed: false,
                                             showCountryOnly: true,
                                             // optional. aligns the flag and the Text left
                                             // alignLeft: false,
                                           ),
                                         ),
                                         Icon(
                                           Icons.arrow_drop_down,
                                           color: Colors.white,
                                         ),
                                         SizedBox(
                                           width: 10,
                                         ),
                                         Container(
                                           width: 1.5,
                                           color: Colors.white,
                                           height: 45,
                                         )
                                       ],
                                     ),
                                   ),

                                   hintStyle: TextStyle(
                                       color: Colors.white,
                                       fontSize: 12,
                                       decoration: TextDecoration.none,
                                       fontFamily: 'Lato'),
                                 ),
                               ),
                             )
                           ],
                         )),
                     SizedBox(height: 18),

                     InkWell(
                       onTap: (){
                          if(_phoneNumberController.text.length<10)
                            {
                              Toast.show("Enter a valid phone Number !!", context, duration: Toast.LENGTH_LONG, gravity:  Toast.BOTTOM,backgroundColor: Colors.redAccent);

                            }
                          else{
                            loginUser('+91'+_phoneNumberController.text,context);
                          }
                         //Navigator.push(context, MaterialPageRoute(builder: (context)=>OTPScreen()));
                       },
                       child:   Container(
                         height: 45,
                         margin: EdgeInsets.symmetric(horizontal: 25),
                         decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(5),
                             color: Color.fromRGBO(37, 72, 99, 1)),
                         child: Center(
                           child: Text(
                             'NEXT',
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






               ],
             ),
           )
        ],
      ),
    );
  }

  void _onCountryChange(CountryCode countryCode) {
    //TODO : manipulate the selected country code here
    print("New Country selected: " + countryCode.toString());
  }

  Future<bool> loginUser(String phone, BuildContext context) async{

    APIDialog.showAlertDialog(context, 'Sending OTP...');
    print(phone);

    _auth.verifyPhoneNumber(
        phoneNumber: phone,
        timeout: Duration(seconds: 60),
        verificationCompleted: (AuthCredential credential) async{
          Navigator.of(context).pop();

          AuthResult result = await _auth.signInWithCredential(credential);

          FirebaseUser user = result.user;

          if(user != null){
            print('user logged');
           /* Navigator.push(context, MaterialPageRoute(
                builder: (context) => HomeScreen(user: user,)
            ));*/
          }else{
            print("Error");
          }

          //This callback would gets called when verification is done auto maticlly
        },
        verificationFailed: (AuthException exception){
          print(exception);
        },
        codeSent: (String verificationId, [int forceResendingToken]){


          print(verificationId);

          Navigator.pop(context);
          Toast.show("OTP sent to your phone Number !!", context, duration: Toast.LENGTH_LONG, gravity:  Toast.BOTTOM,backgroundColor: Colors.greenAccent);

          Navigator.push(context, MaterialPageRoute(builder: (context)=>OTPScreen(verificationId,_auth)));

        },
        codeAutoRetrievalTimeout: null
    );
  }

}
