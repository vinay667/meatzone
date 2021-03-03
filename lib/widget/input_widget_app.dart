import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:meatzone/colors/colors.dart';

class TextInput4 extends StatefulWidget {


final labelText;

  TextInput4(this.labelText);

  @override
  _TextInputState createState() => _TextInputState();
}

class _TextInputState extends State<TextInput4> {



  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          widget.labelText,
          style: TextStyle(
              fontSize: 13,
              color: Colors.grey.withOpacity(0.7),
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w400),
        ),


        Container(
          height: 40,
          child: TextFormField(
            style: TextStyle(
                fontSize: 17.0,
                color: MyColor.defaultTextColor,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w500),
            decoration: new InputDecoration(
              hintText: 'Enter '+widget.labelText,
              hintStyle: TextStyle(
                color:
                MyColor.defaultTextColor.withOpacity(0.2),

                fontFamily: 'Roboto',
                fontWeight: FontWeight.w500,
                fontSize: 17,
              ),
              fillColor: Colors.white,
              contentPadding: EdgeInsets.only(right: 20,top: 27,bottom: 10),
              //fillColor: Colors.green
            ),
            keyboardType: TextInputType.emailAddress,
          ),
        ),

        SizedBox(height: 25),

      ],


    );
  }
}
