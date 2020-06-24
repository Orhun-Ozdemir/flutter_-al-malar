import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void  main(){


runApp(MaterialApp(
  debugShowCheckedModeBanner: false,

home: Scaffold(

 body:Steppers(),

 


),





),



);

}

class Steppers extends StatefulWidget {
  @override
  _SteppersState createState() => _SteppersState();
}

class _SteppersState extends State<Steppers> {


  StepState kontrol(int i){


if(i==step)
{

if(hata){

return StepState.error;

}
else{


return StepState.editing;




}



}
else {


return StepState.complete;
}



}
  String password,name;
  GlobalKey key0=GlobalKey<FormFieldState>();
  GlobalKey key1=GlobalKey<FormFieldState>();
  GlobalKey key2=GlobalKey<FormFieldState>();
    int step=0;
    bool hata=false;
   
  @override
  Widget build(BuildContext context) {
   List<Step> adims=_steps();
    return SingleChildScrollView(

child:Stepper(
  
  currentStep: step,
  onStepTapped: (value){
setState(() {
  step=value;
});
   
  },
  onStepContinue: (){
    if(step<adims.length-1){

      setState(() {
        step++;
      },
      
      );
    }
    else if(step==adims.length-1){

   setState(() {
     
    step=0;


   });


    }
    

  },

  onStepCancel: (){
    if(step>0){
setState(() {
  step--;
});

    }
    else if(step==0){
setState(() {
  step=adims.length-1;
});
   

    }



  },
  steps:_steps())
    );
  }


  List<Step> _steps(){
 
 List<Step> adimlar=[

Step(state:kontrol(step),title:Text("Ad"),isActive: true,  content:TextFormField

(
  
  key: key0,
  onTap: (){},


validator: (girilendeger){

 if(girilendeger.length<8){
  hata=true;
  return "${8-girilendeger.length} daha karakter yazmalısınız";
  
 }
 else{
   hata=false;
 }
},decoration:InputDecoration(  hintText:"Adınınz yazınız",border:OutlineInputBorder(),labelText:"Adımlar"),

) ),










Step( state:kontrol(step),title:Text("Password"),isActive:true,content:TextFormField(
 key: key1,
  validator: (girilendeger){

 if(girilendeger.length<8){
  hata=true;
  return "${8-girilendeger.length} daha karakter yazmalısınız";
  
 }
 else{
   hata=false;
 }
},
onSaved: (girilendeger){
 name=girilendeger;

},
  decoration: InputDecoration(border:OutlineInputBorder(),labelText:"Password"),
), )


 ];

return adimlar;






}

}










