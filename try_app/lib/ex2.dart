

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

void main(){




runApp(MaterialApp(

home: Scaffold(

  body:Try(),
),



));

}


class Try extends StatefulWidget {
  Try({Key key}) : super(key: key);

  @override
  _TryState createState() => _TryState();
}

class _TryState extends State<Try> {


var z={
  'key':"deger",
};


Future<List<Map>> take()async{


var x= await http.get("https://jsonplaceholder.typicode.com/posts/1");
if(x.statusCode==200){

 

var y=(json.decode(x.body)as List)



return y;

}



}


  @override
  Widget build(BuildContext context) {
    var z=take();
    return Container(
       
    );
  }
}