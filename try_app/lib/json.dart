import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:convert';

void main(){

  runApp(MaterialApp(
debugShowCheckedModeBanner: false,



    home:Scaffold(

appBar: AppBar(),

      body:jsons(),
    ),
  ));
}


class jsons extends StatefulWidget {
  @override
  _jsonsState createState() => _jsonsState();
}

class _jsonsState extends State<jsons> {

Future<List> VeriOku() async{


//Future<String> jsonss=DefaultAssetBundle.of(context).loadString("assets/data/person.json").then((value){debugPrint(value);});


var x= await DefaultAssetBundle.of(context).loadString("assets/data/person.json");

 var person =json.decode(x.toString(),);   // String olan veriyi Josn objesi  ahline getiriyor


return person;
}
   
  @override
  List allperson;
  Widget build(BuildContext context) {
    
  
   
    return Container(
      
      child:FutureBuilder( future:VeriOku(),builder: (context,sonuc){

       if(sonuc.hasData)
       {
         
         allperson=sonuc.data;
         
         
           return ListView.builder(itemBuilder: (context,index){

             
          debugPrint(allperson.length.toString());
               
               return ListTile(
                 
                 subtitle:Text( "${allperson[index]['ad'].toString()}",style:TextStyle(color:Colors.black)),
                 title: Text("${allperson[index]["soyad"].toString()}",style:TextStyle(color:Colors.green)),
             );
             


           },itemCount: allperson.length,);


       }
       else{


         return Center(
           child:CircularProgressIndicator(),
         );
       }




      })
    );
  }




}