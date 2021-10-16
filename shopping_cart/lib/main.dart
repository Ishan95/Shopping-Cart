import 'package:flutter/material.dart';
import 'package:shopping_cart/constants.dart';
import 'package:shopping_cart/screens/home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shopping Cart',
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTxtColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}