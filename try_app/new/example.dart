

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){



  runApp(MaterialApp(
debugShowCheckedModeBanner: false,


    theme: ThemeData(
      
      
      primaryColor: Colors.green,
     
      
      
      
      
      ),

   home:Degisken()
   ),
   );
}



class Degisken extends StatefulWidget {
  @override
  _DegiskenState createState() => _DegiskenState();
}

class _DegiskenState extends State<Degisken> {
 

 String name;
 int enough =8;
  final  Formkey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
     
appBar: AppBar(


  title:Text("Dünya"),
),
body: Padding(
  padding: EdgeInsets.all(2),
  child:Column(
  
  

  children:<Widget>
  [
    SizedBox(

      height:40,
    ),
    
    Form
  (
    autovalidate: true,
    key: Formkey,

    child:TextFormField(
      onSaved: (String value){
name=value;
 

      },
validator: (String value){

if(value.length<8 && value.length!=0){
   
  return "Adınız minimum 8 karakter olmalı (${enough-value.length}  karakter daha yazmalısınız)";
}
else{

  return null;
}

},
  
  decoration:InputDecoration(

  hintText: "Ad Kısmı",
  enabledBorder: OutlineInputBorder(borderSide:BorderSide(color: Colors.red),borderRadius:BorderRadius.circular(20)),
  border: OutlineInputBorder(borderSide:BorderSide(color: Colors.green),borderRadius: BorderRadius.circular(20)),



   ),     //AD KISMI



),
),

SizedBox(

  width:100,
  height:20,
),
Container(
  height: MediaQuery.of(context).size.width*0.15,
  color: Colors.purple,
  child:Row(

mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: <Widget>[

    
    Expanded(
      child:Container(
        child:Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children:<Widget>[
        Expanded(child:Text("Ad"), ),


          ]
        ),
 height: MediaQuery.of(context).size.width*0.10,
  color: Colors.purple,
 

), ),

    Container(
      color: Colors.white,

      child:SizedBox(
  width: MediaQuery.of(context).size.width*0.70,
  height: MediaQuery.of(context).size.width*0.10,
child:TextFormField(
  key: Formkey,
obscureText: true,
decoration:InputDecoration(
hintStyle: TextStyle(fontSize:10 ,color:Colors.cyan),
labelStyle: TextStyle(fontSize:10 ,color: Colors.purple), // Satırın iç kımında yazan yazan gri yazı
hintText:"Password",
labelText:"Password",
enabledBorder:OutlineInputBorder(borderSide:BorderSide(color: Colors.blue),borderRadius: BorderRadius.circular(5)),





),
  
),

),
    ),


    
  ],
),



),




SizedBox(
width:20,
height:20,

),

 ButtonTheme(
   
   minWidth: MediaQuery.of(context).size.width*0.65,
   height:40,
   
   child:RaisedButton.icon(onPressed: (){
   
   if(Formkey.currentState.validate()){

    Formkey.currentState.save();

   }
   
 }, icon: Icon(Icons.save), label:Text("Kaydet"),),

 ),
],
),
),
);

  }
}