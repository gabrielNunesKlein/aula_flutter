

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WidgetLogin extends StatefulWidget {
  const WidgetLogin({Key? key}) : super(key: key);

  @override
  _WidgetLoginState createState() => _WidgetLoginState();
}

class _WidgetLoginState extends State<WidgetLogin> {
  TextStyle style = TextStyle(fontFamily: 'montserrat', fontSize: 20.0);
  @override
  Widget build(BuildContext context) {
    final emailField = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0), hintText: "Email",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))
      ),
    );

    final passwordField = TextField(
      obscureText: true,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0), hintText: "Password",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))
      ),
    );

    final buttonLogin = ButtonTheme(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        child: RaisedButton(
          color: Color(0xff01A0C7),
          child: Text("Login", textAlign: TextAlign.center,
              style: style.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold)),
          onPressed: () {},
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0)
          ),
        )
    );

    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            color: Colors.white,
            padding: const EdgeInsets.all(40.0),
            child: Column(
              children: [
                SizedBox(height: 150.0,
                  child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSK5KF1C37zAGGITIWFqMbE6oxxJT8XK4BxGQ&usqp=CAU", fit: BoxFit.contain),
                ),
                SizedBox(height: 40.0),emailField,
                SizedBox(height: 20.0),passwordField,
                SizedBox(height: 30.0),buttonLogin,
              ],
            ),
          ),
        ),
      ),
    );
  }
}