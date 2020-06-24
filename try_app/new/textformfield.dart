

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){


runApp(MaterialApp(

debugShowCheckedModeBanner: false,
home:Formex()

));



}

class Formex extends StatefulWidget {
  @override
  _FormexState createState() => _FormexState();
}

class _FormexState extends State<Formex> {
  String _mail,_name,_password;
   int maxline=1;
  FocusNode fnode;
  TextEditingController textController;
  final formkey=GlobalKey<FormState>();




@override
  void initState() {
    // TODO: implement initState
    super.initState();
    textController=TextEditingController(text: "Orhun");
    fnode=FocusNode();

fnode.addListener(() {

SetState(){

if(fnode.hasFocus){
maxline=3;
}
else{

  maxline=1;
}}});}
   



   @override
  void dispose() {
    // TODO: implement dispose
    textController.dispose();
    fnode.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

appBar: AppBar(

title:Text("TextFormField Test 1"),

),
body:
Column(children: <Widget>[

   Padding(padding:EdgeInsets.all(20),
  
  child: TextFormField(
    
     autovalidate: true,
  decoration:InputDecoration(
   hintText:"Ad",
   labelText:"Adınız",
  
    border: OutlineInputBorder(borderSide:BorderSide(style:BorderStyle.solid,color:Colors.orange),borderRadius:BorderRadius.circular(20)),
    errorBorder: OutlineInputBorder(borderSide:BorderSide(style:BorderStyle.solid,color: Colors.green),borderRadius: BorderRadius.circular(20)),
    enabledBorder:  OutlineInputBorder(borderSide:BorderSide(style:BorderStyle.solid,color: Colors.purple),borderRadius: BorderRadius.circular(20)),
    focusedBorder: OutlineInputBorder(borderSide:BorderSide(color:Colors.red )),
  
  ),
  initialValue: "Başlangıç",
  onSaved: (s){
_name=s;
  },
  validator: (String s){
    if(s.length <8){

     return "karakterden küçük bir deger giremezsiniz";


    }
    else(){
      return null;
    };

 

  },

  ),),
  

RaisedButton.icon(onPressed:(){}, icon: Icon(Icons.save), label:Text("Kaydet"),elevation: 12,),


],)


);
  }
}