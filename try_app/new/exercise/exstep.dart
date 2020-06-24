import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){

runApp(MaterialApp(
debugShowCheckedModeBanner: false,
home: StaticApp(),
),
);





}



class StaticApp extends StatefulWidget {
  @override
  _StaticAppState createState() => _StaticAppState();
}

class _StaticAppState extends State<StaticApp> {

String dersAdi;
int derskredi=1;
double harf=4;
List<Dersler> dersler=[];
double notortalmasi=0;
GlobalKey anahtar=GlobalKey();
GlobalKey<FormState> formkey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(

appBar: AppBar(title:SizedBox( child:Text(" Not Ortalama Hesaplama"),),),
floatingActionButton: FloatingActionButton(onPressed: (){
setState(() {
  if(formkey.currentState.validate()){

  formkey.currentState.save();

}
});




}),
body:

Container(
      
child: Column(
  crossAxisAlignment:CrossAxisAlignment.stretch,
children:<Widget>[
                   /////// STATİK FORM KISMI

 Container(
   padding: EdgeInsets.all(10),
   color: Colors.white54,
   child: Form(
     key: formkey,
     
     child: 
     Column(

       children:<Widget>[

TextFormField(
    
  decoration:InputDecoration(

 labelText: "Not kısmı",
 border: OutlineInputBorder(),

  ),
  validator: (value){

   if(value.length>0){
return null;
   } 


  },
  onSaved: (value){

dersAdi=value;
setState(() {
  dersler.add(Dersler(derskredi ,harf ,dersAdi));
 ortlamahesapla();
});




  },
),


Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
children: <Widget>[

DropdownButton<int>(items: DersKredileriItem(),value: derskredi, onChanged: (value){

setState(() {
  
  derskredi=value;
});


}),


DropdownButton<double>(items: DersHarfleriItem(),value: harf, onChanged: (value){

setState(() {
  
  harf=value;
});


})

],
)


       ]
     )
     
     
   
   
   ),
   ),
 Container(
 child: RichText(


 text: TextSpan(

children:[

TextSpan(text: "Not Ortalaması:",style: TextStyle(color: Colors.blueAccent)),
TextSpan(text: "${notortalmasi}",style: TextStyle(color: Colors.blueAccent)),





]

 ),


 ),




 ),

                      ////  DİNAMİK FORM KISMI
Expanded(child: Container(
 child: ListView.builder(itemBuilder: _eklenenDersler,itemCount: dersler.length,),
  
  
    ),
    ),
  
  
  ]
  
  ),
  
      ));
    }
  
  
 Widget _eklenenDersler(BuildContext context, int index) {
    debugPrint(anahtar.toString());
    int s=0;
    return 
    Dismissible(
      onDismissed: (startToEnd){
        setState(() {
           dersler.removeAt(index);
        });
          

      },
      key: generatekey(), 
              child:Card(

             child: ListTile(

     title:Text(dersler[index].ders),
     subtitle: Text(dersler[index].not.toString()+"    "+ "${dersler[index].harf.toString()}"),
   ),
   

    ),
    );
    


    
  }
  
   double ortlamahesapla()
   {

      var tumkrederiler=0;
      double notlar=0;
        for( var ders in dersler){
     
        var x=ders.harf;
          debugPrint("harf  ${x}");
        var y=ders.not;  // kredi
          debugPrint("kredi  ${y}");
      
      notlar=notlar+(x*y);
      tumkrederiler+=y;

    }

   return notortalmasi=notlar/tumkrederiler;


   }
 
 
 
  }
  List<DropdownMenuItem<int>> DersKredileriItem(){
  
  List<DropdownMenuItem<int>> credits=[];
  
  for(int i=1;i<=10;i++)
  {
  
  var x=DropdownMenuItem( value:i,child: Text("kredi  ${i}"));
  credits.add(x);
  }
  
  return credits;
  
  
  }
  List<DropdownMenuItem<double>> DersHarfleriItem(){
  
  List<DropdownMenuItem<double>> letter=[
  
  
  DropdownMenuItem<double>(child: Text("AA"),value: 4),
  DropdownMenuItem<double>(child: Text("BA"),value: 3.5),
  DropdownMenuItem<double>(child: Text("BB"),value: 3),
  DropdownMenuItem<double>(child: Text("CB"),value: 2.5),
  DropdownMenuItem<double>(child: Text("CC"),value: 2),
  DropdownMenuItem<double>(child: Text("DC"),value: 1.50),
  DropdownMenuItem<double>(child: Text("DD"),value: 1),
  DropdownMenuItem<double>(child: Text("FD"),value: 0.50),
  DropdownMenuItem<double>(child: Text("FF"),value: 0),
  
  ];
    return letter;
  
  



  
  }
  
   GlobalKey generatekey(){


GlobalKey l=GlobalKey();
debugPrint(l.toString());

 return l;
}

 
   



class Dersler
{

int not;
double harf;
String ders;

Dersler(this.not,this.harf,this.ders);


}



