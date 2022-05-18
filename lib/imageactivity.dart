import 'package:flutter/material.dart';

class Imageactivity extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Image from assets"),
        ),
        body: Image.asset('assets/image/tablet.jpg'), //   <--- image
      ),
    );
  }
}