


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void  main(){


runApp(MaterialApp(
  debugShowCheckedModeBanner: false,

home: Scaffold(

 body:Timer(),

 


),





),



);

}


class Timer extends StatefulWidget {
  @override
  _TimerState createState() => _TimerState();
}

class _TimerState extends State<Timer> {

  

  @override
  Widget build(BuildContext context) {
    


    TimeOfDay now=TimeOfDay.now();
    DateTime nows=DateTime.now();
    DateTime last=DateTime(2020,nows.month-3);
    DateTime lastdays=DateTime(2020,6,nows.day+20);   // Tarihe dikkat edilmesi lazım

  
    return 
    (Column
    
    (
      mainAxisAlignment: MainAxisAlignment.center,
   
      children:<Widget>[

       Row(
         
         
         mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget>[
         


         RaisedButton(
           child: Text("Buton"),
           color:Colors.green,onPressed: (){
                setState(() {
                  


                 showDatePicker(context: context, initialDate: nows, firstDate: last, lastDate: lastdays).then((value) =>{

             debugPrint(value.toString()),
             debugPrint(value.millisecondsSinceEpoch.toString()),



            });

                });
            





         }),
        



       ],
       ),

Row(
mainAxisAlignment:MainAxisAlignment.center,
children:<Widget>[


 RaisedButton(
           
           child: Text("Buton"),
           color:Colors.blue,onPressed: (){
setState(() {
  

    showTimePicker(context: (context), initialTime: now).then((value) => debugPrint(value.toString()));


});
        


         }),


]

)


      ]




    )
    
    );

      
    
  }
}