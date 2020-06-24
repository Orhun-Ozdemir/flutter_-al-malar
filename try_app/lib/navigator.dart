import 'package:flutter/material.dart';



class Navigasyon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Center(
       child:Container(
         child: RaisedButton(onPressed:(){

          Navigator.push(context,MaterialPageRoute(builder:(context){

               return IkinciSayfa();

          }), );


         }),


     ),
     ),

    );
  }
}




class IkinciSayfa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
       child:Text("Hoş geldin,"),
    );
  }
}