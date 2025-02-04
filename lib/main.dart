import 'package:flutter/material.dart';
import 'package:foodapp/bookmyshow.dart';
import 'package:foodapp/fooddeliveryapp.dart';
import 'package:foodapp/shoppingapp.dart';
import 'package:foodapp/telegram.dart';
void main() {
  runApp(Myapp());
}
  class Myapp extends StatefulWidget {
    const Myapp({super.key});

    @override
    State<Myapp> createState() => _MyappState();
  }

  class _MyappState extends State<Myapp> {
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
    title: "demo",
    debugShowCheckedModeBanner: false,
    home: page4(),
      );

  }

}