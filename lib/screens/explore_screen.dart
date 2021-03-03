


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meatzone/screens/cart_screen.dart';

class ExploreScreen extends StatefulWidget
{
  ExploreState createState()=>ExploreState();
}

class ExploreState extends State<ExploreScreen>
{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: ListView(
       padding: EdgeInsets.zero,
       children: <Widget>[
         Stack(
           children: <Widget>[

             Container(
               transform: Matrix4.translationValues(0.0, -2.0, 0.0),
               height: 40,
               color: Color.fromRGBO(37,72,99,1),
             ),

             Container(
               height: 120,
               width: double.infinity,
               // margin: EdgeInsets.only(top: 5),
               //  transform: Matrix4.translationValues(0.0, -10.0, 0.0),
               padding: EdgeInsets.only(
                   left: 16, right: 16, bottom: 10),

                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: Image.asset(
                    'images/banner5.png',
                    fit: BoxFit.fill,
                  ),
                ),

             ),
           ],
         ),


         SizedBox(height: 8),




         GridView.builder(
             itemCount:6,
             physics: NeverScrollableScrollPhysics(),
             shrinkWrap: true,
             padding: EdgeInsets.symmetric(horizontal: 25),
             gridDelegate:
             SliverGridDelegateWithFixedCrossAxisCount(
                 crossAxisCount: 2,
                 crossAxisSpacing: 8,
                 mainAxisSpacing: 10,
                 childAspectRatio: 1.0),
             itemBuilder: (context, index) {
               return Card(
                 elevation: 5,
                 color: Colors.white,
                 child: Container(
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.stretch,
                     children: <Widget>[
                       Container(
                         height: 70,
                         width: double.infinity,
                         margin: EdgeInsets.all(5),
                         decoration: BoxDecoration(
                             border: Border.all(color: Colors.grey,width: 1)
                         ),
                         child: Image.asset('images/banner1.jpg',fit: BoxFit.fill,),


                       ),

                       Container(
                         padding: EdgeInsets.symmetric(horizontal: 5),
                         child:   Text(
                           'Jumbo Tiger Prawn',
                           style: TextStyle(
                               fontSize: 10.5,
                               color: Color.fromRGBO(79,107,128,1),
                               fontFamily: 'Lato',
                               fontWeight: FontWeight.w500),
                         ),
                       ),

                       SizedBox(height: 10),

                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: <Widget>[


                           Container(
                             padding: EdgeInsets.only(left: 5),
                             child:   Text(
                               '₹750',
                               style: TextStyle(
                                   fontSize: 13,
                                   color: Color.fromRGBO(79,107,128,1),
                                   fontFamily: 'Lato',
                                   fontWeight: FontWeight.w800),
                             ),
                           ),


                           InkWell(
                             onTap: (){
                               Navigator.push(context, MaterialPageRoute(builder: (context)=>CartScreen()));
                             },
                             child: Container(
                               padding: EdgeInsets.symmetric(horizontal: 5),
                               margin: EdgeInsets.only(right: 5),
                               width: 80,
                               height: 22,
                               color: Color.fromRGBO(235,33,37,1),

                               child: Row(
                                 children: <Widget>[

                                   Text(
                                     'Add to Cart',
                                     style: TextStyle(
                                         fontSize: 10.5,
                                         color: Colors.white,
                                         fontFamily: 'Lato',
                                         fontWeight: FontWeight.w500),
                                   ),

                                   SizedBox(width: 3,),
                                   Image.asset('images/cart.png',width: 12,height: 12,color: Colors.white,)






                                 ],
                               ),

                             ),
                           )



                         ],
                       )







                     ],
                   ),



                 ),
               );
             }),


         SizedBox(height: 20),



       ],




     ),



   );
  }

}