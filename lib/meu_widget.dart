
import 'package:flutter/material.dart';

meuWidget(){
  return Scaffold(
    appBar: AppBar(
      title: Text("Flutter 2021"),
      centerTitle: true,
    ),
    body: Container(
      color: Colors.white,
    ),
    drawer: Container(
      color: Colors.orange,
    ),
    floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_a_photo),
        onPressed: () {
          print("Precionado");
        }
    ),
    bottomNavigationBar: BottomAppBar(
      child: Container(
        height: 40,
        color: Colors.orange,
        child: Row(
          children: [
            Text("Meu BottomApp"),
            Icon(Icons.home)
          ],
        ),
      ),
    ),
    persistentFooterButtons: [
      IconButton(icon: Icon(Icons.add_alarm),
          onPressed: null)
    ],
  );
}