import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main(){
runApp(new MaterialApp(
debugShowCheckedModeBanner: false,
theme: ThemeData(primarySwatch:Colors.orange),
home: Scaffold(
  appBar:AppBar(title:Text("ORHUN LİSTE YAPIYOR",style: TextStyle(color:Colors.white),),
  ),
  body:
Lists(),

  

  ),

),

  




);


}

class  Who {
  
String name;
String surname;
bool gender;

Who(this.name,this.surname,this.gender);

}


class Lists extends StatelessWidget {
  
  List<Who> person=[];







  @override
  Widget build(BuildContext context) {
    Degerata();
    // TODO: implement build
    return ListView.builder(
      
      
      itemCount: 12,
      itemBuilder: (context,index){

       return Card(
         color: Colors.blue,
         elevation: 12,

    child:ListTile(
    title: Text("New one"),
    subtitle: Text("${person[index].name}"),
    onTap: (){

      ShowDialog(context);
    }


)

       );



      });
  }
  

 void Degerata(){

List<Who> human=List.generate(200, (index) => Who("Orhun","ÖZdemir",true));
this.person=human;

 } 


void ShowDialog(BuildContext ctx)
{
showDialog(context:(ctx),
barrierDismissible: false,
builder:(ctx){

return AlertDialog(title: 

Text(" ALERT  HOŞGELİDNİZ"),
actions: <Widget>[

RaisedButton( 
  child:Text("Button"), 
  onPressed:(){},
  color: Colors.red,
  ),
  RaisedButton( 
  child:Text("Button"), 
  onPressed:(){},
  color: Colors.blue,
  )



]

);

}
);

}




}




