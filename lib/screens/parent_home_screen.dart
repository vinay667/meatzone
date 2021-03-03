import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meatzone/colors/colors.dart';
import 'package:meatzone/screens/explore_screen.dart';
import 'package:meatzone/screens/my_account_screen.dart';
import 'package:meatzone/screens/notification_screen.dart';
import 'package:meatzone/screens/profile_screen.dart';
import 'package:meatzone/screens/settings.dart';

import 'home_screen.dart';

//class needs to extend StatefulWidget since we need to make changes to the bottom app bar according to the user clicks
class BottomTabScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return BottomTabState();
  }
}

class BottomTabState extends State<BottomTabScreen> {
  GlobalKey<ScaffoldState> _key = GlobalKey();
  List<String> pageTitles=['Home','Notifications','Explore','Profile','Settings'];
  String pageTitle='Home';
  final List<Widget> _children = <Widget>[
    HomeScreen(),
    NotificationScreen(),
    ExploreScreen(),
    MyAccountScreen(),
    SettingsScreen()

  ];
  int selectedIndex =
  0; //to handle which item is currently selected in the bottom app bar


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
        drawer: Container(
          width: 260.3,

          child: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                GestureDetector(
                  onTap: () async {
                  },
                  child: Container(
                    height: 200.3,
                    color: Color.fromRGBO(146,146,146,1),
                    child: DrawerHeader(
                      padding: EdgeInsets.zero,
                      child: Container(
                          child:   Column(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(left: 15, top: 20),
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      height: 60,
                                      width: 46.3,
                                      child: Stack(
                                        children: <Widget>[
                                          Container(
                                              height: 46.3,
                                              width: 46.3,
                                              margin: EdgeInsets.only(top: 10),
                                              decoration: new BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  image: new DecorationImage(
                                                      fit: BoxFit.fill,
                                                      image:AssetImage(
                                                          'images/dum_profile.jpg')))),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                right: 5, bottom: 3),
                                            child: Align(
                                              alignment: Alignment.bottomRight,
                                              child: Container(
                                                width: 10,
                                                height: 10,
                                                decoration: new BoxDecoration(
                                                  color: Colors.green,
                                                  shape: BoxShape.circle,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                  width: double.infinity,
                                  padding: EdgeInsets.only(
                                      left: 15, top: 20, right: 4),
                                  child: Text(
                                    'Peter',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: 'Roboto',
                                        color: Colors.white),
                                  )),
                              Container(
                                  width: double.infinity,
                                  padding:
                                  EdgeInsets.only(left: 15, top: 7, right: 5),
                                  child: Text(
                                    'peter@gmail.com',
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontFamily: 'Roboto',
                                        color: Colors.white),
                                  )),
                            ],
                          )),
                    ),
                  ),
                ),
                ListTile(
                  title: Text(
                    'Home',
                    style: TextStyle(
                        fontSize: 16,
                        color: MyColor.defaultTextColor,
                        decoration: TextDecoration.none,
                        fontFamily: 'GilroySemibold'),
                  ),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  title: Text(
                    'Chicken',
                    style: TextStyle(
                        fontSize: 16,
                        color: MyColor.defaultTextColor,
                        decoration: TextDecoration.none,
                        fontFamily: 'GilroySemibold'),
                  ),
                  onTap: () {

                  },
                ),
                ListTile(
                  title: Text(
                    'Coldcuts',
                    style: TextStyle(
                        fontSize: 16,
                        color: MyColor.defaultTextColor,
                        decoration: TextDecoration.none,
                        fontFamily: 'GilroySemibold'),
                  ),
                  onTap: () async {

                  },
                ),
                ListTile(
                  title: Text(
                    'Ready to Eat',
                    style: TextStyle(
                        fontSize: 16,
                        color: MyColor.defaultTextColor,
                        decoration: TextDecoration.none,
                        fontFamily: 'GilroySemibold'),
                  ),
                  onTap: () {

                    // Navigator.of(context).push(_createRoute());
                  },
                ),
                ListTile(
                  title: Text(
                    'Prawns and Seafood',
                    style: TextStyle(
                        fontSize: 16,
                        color: MyColor.defaultTextColor,
                        decoration: TextDecoration.none,
                        fontFamily: 'GilroySemibold'),
                  ),
                  onTap: () {

                  },
                ),
                ListTile(
                  title: Text(
                    'Fish',
                    style: TextStyle(
                        fontSize: 16,
                        color: MyColor.defaultTextColor,
                        decoration: TextDecoration.none,
                        fontFamily: 'GilroySemibold'),
                  ),
                  onTap: () {

                  },
                ),
                ListTile(
                  title: Text(
                    'Mutton',
                    style: TextStyle(
                        fontSize: 16,
                        color: MyColor.defaultTextColor,
                        decoration: TextDecoration.none,
                        fontFamily: 'GilroySemibold'),
                  ),
                  onTap: () {

                  },
                ),

                ListTile(
                  title: Text(
                    'Party Packers',
                    style: TextStyle(
                        fontSize: 16,
                        color: MyColor.defaultTextColor,
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Roboto'),
                  ),
                  onTap: () {

                  },
                ),



              ],
            ),
          ),
        ),
      bottomNavigationBar: Container(
        height: 62,
        decoration: BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black.withOpacity(0.3),
                blurRadius: 20,
                spreadRadius: 2
            ),]
        ),
        child: BottomNavigationBar(
          backgroundColor:Color.fromRGBO(37,72,99,1),
          currentIndex: selectedIndex,
          type: BottomNavigationBarType.fixed,
          selectedItemColor:Colors.white,
          unselectedItemColor:  Color.fromRGBO(199,208,215,1),
          items: [
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(top: 10),
                child:ImageIcon(AssetImage("images/feed.png"),size: 18,),
              ),
              title:Text('')
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(top: 10),
                child: Icon(Icons.notifications,size: 22,)
              ),
                title:Text('')
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(top: 13),
                child: ImageIcon(AssetImage("images/explore.png"),size: 18,),
              ),
                title:Text('')
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(top: 10),
                child:ImageIcon(AssetImage("images/profile.png"),size: 18,),
              ),
                title:Text('')
            ),


            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(top: 10),
                child: ImageIcon(AssetImage("images/settings.png"),size: 20,),
              ),
                title:Text('')
            ),

          ],
          onTap: (index) {
            setState(() {
              selectedIndex = index;

            });
          },
        ),
      ),
      body:Builder(
      builder: (ctx)=>Column(
        children: <Widget>[

          Container(
            height: 80,
            padding: EdgeInsets.only(left: 20,right: 20,top: 15),
            width: double.infinity,
            color:Color.fromRGBO(37,72,99,1),
            child: Row(
              children: <Widget>[
                InkWell(
                  onTap:(){

                    Scaffold.of(ctx).openDrawer();
      },
                  child: Icon(Icons.dehaze,color: Colors.white,size: 27),
                ),
                SizedBox(width: 25,),
                Text(
                  pageTitles[selectedIndex],
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w500),
                ),


                Spacer(),
                Icon(Icons.notifications,color: Color.fromRGBO(199,208,215,1),size: 27,),

                SizedBox(width: 15,),

                Icon(Icons.share,color: Color.fromRGBO(199,208,215,1),size: 27,),

                SizedBox(width: 15,),

                Icon(Icons.search,color: Color.fromRGBO(199,208,215,1),size: 27,),



              ],
            ),



          ),

          Expanded(
            child: _children.elementAt(selectedIndex),
          )
        ],
      )
      )
    );
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }





}
