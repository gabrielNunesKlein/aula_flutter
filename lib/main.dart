import 'dart:convert';
import 'package:aula_flutter/tela_login.dart';
import 'package:aula_flutter/user.dart';
import 'package:aula_flutter/widget_raisebutton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'api.dart';
import 'listView.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Aplicativo Flutter",
      theme: ThemeData(primaryColor: Colors.blue),
      home: BuildListView()
    );
  }
}

class BuildListView extends StatefulWidget {
  const BuildListView({Key? key}) : super(key: key);

  @override
  _BuildListViewState createState() => _BuildListViewState();
}

class _BuildListViewState extends State<BuildListView> {

  List<User> users = [];

  _getUsers(){
    API.getUsers().then((response){
      setState(() {
        Iterable lista = json.decode(response.body);
        users = lista.map((model) => User.fromJson(model)).toList();
      });
    });
}

  _BuildListViewState(){
    _getUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista de Usuários"),
      ),
      body: listaUsuarios()
    );
  }
  listaUsuarios(){
    return ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index){
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSK5KF1C37zAGGITIWFqMbE6oxxJT8XK4BxGQ&usqp=CAU"
              ),
            ),
            title: Text(users[index].name, style: TextStyle(fontSize: 20.0, color: Colors.black),
            ),
            subtitle: Text(users[index].email),

            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => DetailPage(users[index]))
              );
            },
          );
        }
    );
  }
}

class DetailPage extends StatelessWidget {
  
  final User user;
  
  DetailPage(this.user);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(user.name),
      ),
      body: userDatail(),
    );
  }
  
  userDatail(){
    return Container(padding: new EdgeInsets.all(32.0),
      child: ListTile(
        title: Text(user.email, style: TextStyle(fontWeight: FontWeight.w500)
        ),
        subtitle: Text(user.username),
        leading: Icon(Icons.email, color: Colors.blue),
      ),
    );
  }
}


/*
class WidgetsBasicos extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Widgets Basicos"),
      ),
      body: Container(
        color: Colors.white,
        child: buildListView2(),
      ),
    );
  }

  widgetImage(){
    return SizedBox.expand(
      child: Center(
          child: Image.network("https://i.redd.it/40dllzy5p8g31.jpg", height: 500, fit: BoxFit.cover, )
      ),
    );
  }

  widgetRowColumn(){
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        widgetButton(),
        widgetButton(),
        widgetButton()
      ],
    );
  }
}

*/

