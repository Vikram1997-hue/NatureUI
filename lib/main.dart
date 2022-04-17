import 'package:flutter/material.dart';
import 'package:nature_ui/constants.dart';
import 'package:nature_ui/screens/home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //this widget is the root of my application
  //const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    const myColor = const Color(0xFF0c9869);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nature UI',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        primaryColor: myColor, //kPrimaryColor
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}
