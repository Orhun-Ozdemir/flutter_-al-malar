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
   int maxline=1;
  FocusNode fnode;
  TextEditingController textController;




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


body:Column(

children:<Widget>[




  Form(
  
    
  
  child:TextField(
    controller: textController,
    maxLines: maxline,
    focusNode: fnode,
   decoration:InputDecoration(
    labelText: "Ad",
    hintText: "Adınız Buraya yazılıcak",
    border: OutlineInputBorder(borderSide:BorderSide(style: BorderStyle.solid),borderRadius:BorderRadius.circular(5))
   

   )


  ) ,),

RaisedButton(
  
  color:Colors.blue,
  
  onPressed:(){

debugPrint(textController.text);

})


]


)
);
  }
}