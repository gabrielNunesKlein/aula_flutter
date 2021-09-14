
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WidgetCorPreferida extends StatefulWidget {
  const WidgetCorPreferida({Key? key}) : super(key: key);

  @override
  _WidgetCorPreferidaState createState() => _WidgetCorPreferidaState();
}

class _WidgetCorPreferidaState extends State<WidgetCorPreferida> {

  String nomeCor="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("StafulWidgets"),
      ),
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
                onSubmitted: (String texo){
                  setState(() {
                    nomeCor = texo;
                  });
                }
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text("A sua cor preferida é $nomeCor",
                style: TextStyle(fontSize: 20.0),
              ),
            )
          ],
        ),
      ),
    );
  }
}