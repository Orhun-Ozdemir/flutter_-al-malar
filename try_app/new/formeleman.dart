


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){



runApp(MaterialApp(
debugShowCheckedModeBanner: false,

home:Scaffold(

body:Home(),










),

),




);

}




class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool checkbox=true;
   bool deger=true;
   int location=0;
   double sliderValue=0;
   List<String> city=["Giresun","Trabzon","Ordu"];
   String down;
   Map<String,String>now;
   var before={

     'color':"green",
     'city':"Ordu"
   };


  
   @override
  void initState() {
    // TODO: implement initState
    debugPrint("init");
    super.initState();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    debugPrint("dispose");
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    debugPrint("build");
    return ListView(
         
          children: <Widget>[
          Container(
            width:50,child:SwitchListTile(value:deger , onChanged:(value){


setState(() {
  location++;
  debugPrint("setState");
deger=value;

});


}, title: Text("$deger"))),


CheckboxListTile(value: checkbox, onChanged:(value){

setState(() {
  checkbox=value;
});


},title: Text("$checkbox"),),

Slider(value:sliderValue ,onChanged:(value){

setState(() {
  sliderValue=value;
});
Text("$sliderValue");

    
  } ,),

DropdownButton<String>(items:city.map((now){

return DropdownMenuItem<String>(child: Row(children: <Widget>[

Container(width:23,height:23, color:Colors.red ,margin: EdgeInsets.symmetric(horizontal:10),),
Text(now),

],
)
);



}).toList(), onChanged:(value){

setState(() {
  down=value;
});



},value: down,)
          ],


      
    );
  }
}