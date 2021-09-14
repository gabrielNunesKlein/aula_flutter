import 'package:flutter/material.dart';

widgetText(){
  return Scaffold(
    appBar: AppBar(
      title: Text("Widgets Basicos"),
    ),
    body: Container(
      color: Colors.white,
      child: Center(
        child: Text("Widgets Basicos", style: TextStyle(fontSize: 40.0, color: Colors.orange, fontWeight: FontWeight.bold,
            decoration: TextDecoration.underline,
            decorationColor: Colors.blue,
            decorationStyle: TextDecorationStyle.wavy),
        ),
      ),
    ),
  );
}