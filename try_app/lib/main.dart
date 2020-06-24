
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main(){
runApp(new MaterialApp(
debugShowCheckedModeBanner: false,
home:new Scaffold(
body: my_app()


)


));




}
class Deneme extends StatefulWidget {
  int value=0;
  @override
  _DenemeState createState() => _DenemeState();
}

class _DenemeState extends State<Deneme> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
RaisedButton( 
         child: Text("Azalt" ,style: Theme.of(context).textTheme.headline6,),
         
         color: Colors.red,
         onPressed:(){
         _Azalt();
       } ),
          Text("${widget.value}",style: TextStyle(color:widget.value>0 ? Colors.green :Colors.red),),

RaisedButton( 
         child: Text("Arttır"),
         color: Colors.blue,
         onPressed:(){
         _Arttir();
       } ),

      ],

      ),
      );


    
  }
 void _Azalt(){
    widget.value--;
   setState(() {
     
      debugPrint("deger azaldı");
   });
 }
 void _Arttir(){
   setState(() {
      widget.value++;
      debugPrint("deger arttı");
   });
 }



}
class my_app extends StatelessWidget{

 String title;
my_app({this.title});


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Deneme();
  

  }
}