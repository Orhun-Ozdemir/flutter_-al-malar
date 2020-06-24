

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Formislemleri extends StatefulWidget {
  @override
  _FormislemleriState createState() => _FormislemleriState();
}

class _FormislemleriState extends State<Formislemleri> {

  FocusNode _fnode;
  int maxline=1;

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    _fnode=FocusNode();

    _fnode.addListener(() {

      if(_fnode.hasFocus){

        maxline=3;
      }else{

        maxline=1;
      }
      


    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

body:Container(
  margin: EdgeInsets.symmetric(vertical: 40,horizontal: 20),

  color: Colors.white30,
width: MediaQuery.of(context).size.width ,
height:MediaQuery.of(context).size.height /2,
child: Form(
  autovalidate: true,
 

 child:TextField(
   autocorrect: true,
   autofocus: false,
   maxLength: 20,
   maxLines: maxline,
   //cursorWidth: MediaQuery.of(context).size.width,
   keyboardType: TextInputType.number,
   textInputAction: TextInputAction.done,
   focusNode: _fnode,
   decoration:InputDecoration(
     labelText: "Ad",
     hintText: "Adın buraya",
     border: OutlineInputBorder(borderRadius:BorderRadius.circular(10)),
     focusColor:Colors.red,
     icon: Icon(Icons.add_a_photo,color: Colors.black,),
     filled: true,
    
     fillColor: Colors.blue[100],
     
   )
 )

),


)
  );
  }
}