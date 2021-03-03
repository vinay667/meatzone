import 'package:flutter/material.dart';
import 'file:///D:/Flutter_Projects/meatzone/lib/screens/landing_screen.dart';
import 'package:meatzone/screens/splash_screen.dart';
import 'package:meatzone/widget/Utils.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  String status = await MyUtils.getSharedPreferences('status') ?? null;
  print(status);
  runApp(MyApp(status));
}


class MyApp extends StatelessWidget {
  String status;
  MyApp(this.status);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       //primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(status),
    );
  }
}
