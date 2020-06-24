


import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main(){


runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
theme: ThemeData(
  primarySwatch: Colors.red
),
home: Scaffold(
body:
CustomScrollView(


  slivers: <Widget>[
    SliverAppBar(
      primary: true, //
      backgroundColor: Colors.blue.shade100,
      expandedHeight:250,
      title:Text("App Bar"),
      flexibleSpace: FlexibleSpaceBar(
       background: Image.asset("assets/images/images.jpg",fit: BoxFit.cover,),
       centerTitle: true,
       title: Text("App Bar2"),
       

      ),
    ),

    SliverToBoxAdapter(child:SingleChildScrollView(

 child:Text("sjdkbfjkabsfgjbhfdjgbıj /n uashdfhagsdıufhbfhjasdbfhjgbadshjfgjhdffghjdghjgdfgjh                  dfajhajkdsfhjuksdffhgjksdhgfgjkhgdsfjfkghjksdffghjksdfhfgjkhsdfgjkh",style: TextStyle(fontSize:50),)

    ))

  ],
)
),


));

}