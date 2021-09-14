

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

widgetButton(){
  return RaisedButton(
      color: Colors.orange,
      elevation: 20.0,
      child: Text("OK"),
      onPressed: (){
        print("Precionado");
      }
  );
}