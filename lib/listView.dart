import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

buildListView(){
  return ListView(
    children: [
      ListTile(
          leading: Icon(Icons.add_location),
          title: Text("Titulo"),
          subtitle: Text("Sub Titulo"),
          trailing: Icon(Icons.add_shopping_cart),
        onTap: (){
            print("Click");
        },
      ),

      ListTile(
        leading: Image.network("https://i.redd.it/40dllzy5p8g31.jpg",),
        title: Text("Titulo"),
        subtitle: Text("Sub Titulo"),
        trailing: Icon(Icons.add_shopping_cart),
        onTap: (){
          print("Click");
        },
      ),
      
      ListTile(
          leading: Icon(Icons.add_to_photos),
          title: Text("texto"),
          subtitle: Text("meu texto"),
          trailing: Icon(Icons.add_box),
          selected: true,
        onLongPress: (){
            print("Precionado");
        },
      ),

      Text("Texto de exemplo"),

      Container(
        color: Colors.green, height: 60.0,
        child: Image.network("https://i.redd.it/40dllzy5p8g31.jpg", height: 100.0,),
      ),
    ],
  );
}

buildListView2(){

  final itens = List<String>.generate(1000, (i) => "Item $i");

  return ListView.builder(
    itemCount: itens.length,
    itemBuilder: (context, index){
      return ListTile(
        leading: Icon(Icons.add_location),
        trailing: Icon(Icons.add_shopping_cart),
        title: Text('${itens[index]}'),
      );
    }
  );
}
