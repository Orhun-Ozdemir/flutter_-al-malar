
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';

void main(){


runApp(MaterialApp(


home:Scaffold(



  appBar: AppBar(),

  body:Jsonn(),
)



));



}



class Jsonn extends StatefulWidget {
  Jsonn({Key key}) : super(key: key);

  @override
  _JsonnState createState() => _JsonnState();
}

class _JsonnState extends State<Jsonn> {

Future<List<Map>> takejson()async{


var svalue= await DefaultAssetBundle.of(context).loadString("assets/data/perosn.json");

var jvalue=(json.decode(svalue)as List);

return jvalue;

}


  @override
  Widget build(BuildContext context) {
    return Container(

      child: FutureBuilder(
         future: takejson(),
         builder: (BuildContext context, json) {

        if(json.hasData){

          var data=json.data;


         return ListView.builder(itemBuilder: (context,index){


       return ListTile(title: data[index]["ad"]);




         },itemCount: data.length,);
        }
        else{


          return Container(

            child:Text("Source Error"),
          );
        }

          
         },
       ),
    );
  }






}