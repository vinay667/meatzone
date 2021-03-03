import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meatzone/colors/colors.dart';
import 'package:meatzone/widget/input3.dart';
import 'package:meatzone/widget/input_field_email.dart';
import 'package:meatzone/widget/input_field_profile_widget.dart';

class MyAccountScreen extends StatefulWidget {
  MyAccountState createState() => MyAccountState();
}

class MyAccountState extends State<MyAccountScreen> {
  FocusNode nameFocusNode = new FocusNode();
  String licenseImage='';
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  FocusNode phoneFocusNode = new FocusNode();
  FocusNode emailFocusNode = new FocusNode();
  FocusNode lNameFocusNode = new FocusNode();
  FocusNode addressFocusNode = new FocusNode();
  var nameController = new TextEditingController();
  var phoneController = new TextEditingController();
  var emailController = new TextEditingController();
  var addressController = new TextEditingController();
  var lnameController = new TextEditingController();

  File _image;
  var _fromData;
  String profileImage = null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Form(
          key: _formKey,
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              Container(
                transform: Matrix4.translationValues(0.0, -5, 0.0),
                height: 140,
                color: Color.fromRGBO(37, 72, 99, 1),
                child: Center(
                    child: Container(
                  margin: EdgeInsets.only(bottom: 22),
                  width: 90,
                  height: 90,
                  child: Stack(
                    children: <Widget>[
                      Container(
                          decoration: new BoxDecoration(
                              shape: BoxShape.circle,
                              image: new DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(
                                      'images/dum_profile.jpg')))),
                      /*  Container(

              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  image: new DecorationImage(
                      fit: BoxFit.fill,
                      image:AssetImage(
                          'images/dum_men.jpg'))
              ),



            ),*/

                      Align(
                          alignment: Alignment.bottomRight,
                          child: InkWell(
                            onTap: () {
                             // getImage();
                            },
                            child: Container(
                              transform:
                                  Matrix4.translationValues(7.0, 0.0, 0.0),
                              margin: EdgeInsets.only(bottom: 10),
                              width: 25,
                              height: 25,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: MyColor.themeColor,
                                  border: Border.all(
                                      color: Colors.white, width: 1)),
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          ))
                    ],
                  ),
                )),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: InputBoxProfileWidget(
                    labelText: 'First Name*',
                    focusNode: nameFocusNode,
                    validator: userNameValidator,
                    controller: nameController,
                    onSaved: (){

                      _submitHandler(context);

                    },
                    onTapTrigger: _requestFocusName),
              ),
              SizedBox(height: 30),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: InputBoxProfileWidget(
                    labelText: 'Last Name*',
                    focusNode: lNameFocusNode,
                    onSaved: (){

                      _submitHandler(context);

                    },
                    controller: lnameController,
                    validator: userNameValidator,
                    onTapTrigger: _requestlName),
              ),
              SizedBox(height: 30),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: TextInput3(
                    keyboardType: TextInputType.number,
                    labelText: 'Phone Number',
                    focusNode: phoneFocusNode,
                    controller: phoneController,
                    onSaved: (){

                      _submitHandler(context);

                    },
                    validator: phoneValidator,
                    onTapTrigger: _requestFocusPhone,
                    prefixIcon: new Padding(
                      padding: EdgeInsets.only(left: 5, right: 5),
                      child: Image.asset(
                        'images/flag_ic.png',
                        width: 40,
                        height: 40,
                      ),
                    )),
              ),
              SizedBox(height: 30),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child:
                InputBoxWidgetEmail(
                    labelText: 'Email',
                    focusNode: emailFocusNode,
                    controller: emailController,
                  isEnabled: false,
                    ),

                /*InputBoxProfileWidget(
                    labelText: 'Email*',
                    focusNode: emailFocusNode,
                    controller: emailController,
                    validator: emailValidator,
                    onTapTrigger: _requestFocusEmail),*/
              ),
              SizedBox(height: 24),

            ],
          ),
        ));
  }

  void _requestFocusName() {
    setState(() {
      FocusScope.of(context).requestFocus(nameFocusNode);
    });
  }

  void _requestlName() {
    setState(() {
      FocusScope.of(context).requestFocus(lNameFocusNode);
    });
  }

  void _requestFocusPhone() {
    setState(() {
      FocusScope.of(context).requestFocus(phoneFocusNode);
    });
  }

  void _requestFocusEmail() {
    setState(() {
      FocusScope.of(context).requestFocus(emailFocusNode);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }


  String phoneValidator(String value) {
    if (value.isEmpty || value.length < 10) {
      return 'Phone is required and should be between 10-15 digits';
    }
    return null;
  }

  String passwordValidator(String value) {
    if (value.isEmpty || value.length < 5) {
      return 'Password is required.';
    }
    return null;
  }

  String userNameValidator(String value) {
    if (value.isEmpty) {
      return 'Name cannot be empty';
    }
    return null;
  }

  void _submitHandler(BuildContext context) async {
    if (!_formKey.currentState.validate()) {
      return;
    }
    _formKey.currentState.save();

    ///all set to login
  }



}

class TriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(size.width, 0.0);
    path.lineTo(size.width / 2, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(TriangleClipper oldClipper) => false;
}
