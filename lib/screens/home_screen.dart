


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meatzone/colors/colors.dart';
import 'package:meatzone/screens/cart_screen.dart';
import 'package:meatzone/widget/custom_slider.dart';

class HomeScreen extends StatefulWidget
{
  HomeState createState()=>HomeState();
}
class HomeState extends State<HomeScreen>
{
  int _current = 0;

   static List<String> imgList = [
  'images/banner1.jpg',
  'images/banner5.png',
  'images/banner3.jpg',
  'images/banner4.jpg',

];

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
               // margin: EdgeInsets.only(top: 5),
                //  transform: Matrix4.translationValues(0.0, -10.0, 0.0),
                padding: EdgeInsets.only(
                    left: 16, right: 16, top: 7, bottom: 10),
                child: SizedBox(
                    height: 190.0,

                    child: Carousel(
                      dotPosition:DotPosition.bottomCenter,
                      images: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12.0),
                          child: Image.asset(
                            imgList[0],
                            fit: BoxFit.fill,
                          ),
                        ),

                        ClipRRect(
                          borderRadius: BorderRadius.circular(12.0),
                          child: Image.asset(
                            imgList[1],
                            fit: BoxFit.fill,
                          ),
                        ),

                        ClipRRect(
                          borderRadius: BorderRadius.circular(12.0),
                          child: Image.asset(
                            imgList[2],
                            fit: BoxFit.fill,
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12.0),
                          child: Image.asset(
                            imgList[3],
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                      dotSize: 6.0,
                      dotSpacing: 18.0,
                      dotIncreaseSize: 1.2,
                      dotColor: Color.fromRGBO(146,146,146,1),
                      //dotColor: Color.fromRGBO(235,33,37,1),
                      indicatorBgPadding: 5.0,
                      dotIncreasedColor: Color.fromRGBO(235,33,37,1),
                      dotBgColor:
                      Colors.black.withOpacity(0.1),
                      borderRadius: true,
                    )),
              ),
            ],
          ),


          SizedBox(height: 20),

          Center(
            child: Text(
              'CATEGORIES',
              style: TextStyle(
                  fontSize: 14,
                  color: Color.fromRGBO(79,107,128,1),
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.w800),
            ),
          ),

          SizedBox(height: 8),

          Container(
            height: 50,
            child: ListView.builder(
             itemCount: 8,
                padding: EdgeInsets.only(left: 40),
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context,int pos)
            {
              return Row(
                children: <Widget>[

                  Container(
                    width: 43,
                    height: 43,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(104,105,105,1),
                        shape: BoxShape.circle
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(6),
                      child: Image.asset('images/fish.png',color: Colors.white,),
                    ),
                    
                    
                  ),
                  SizedBox(width: 15,),


                ],
              );
            }

            ),
          ),

          SizedBox(height: 36),

          Center(
            child: Text(
              'FRESH DEALS',
              style: TextStyle(
                  fontSize: 14,
                  color: Color.fromRGBO(79,107,128,1),
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.w800),
            ),
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
                         // height: 75,
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
                           child:  Container(
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