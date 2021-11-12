import 'package:flutter/material.dart';
import 'package:strete_workout/checkout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Checkout Page App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      /// Day 3
      home: const CheckoutPage(),


    );
  }
}

