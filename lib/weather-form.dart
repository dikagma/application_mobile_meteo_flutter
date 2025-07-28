import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Weather.dart';

class WeatherForm extends StatefulWidget {
  @override
  _WeatherFormState createState() => _WeatherFormState();

}

class _WeatherFormState extends State<WeatherForm> {
String city="";
  TextEditingController cityEditingController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title:Text('${city}'), backgroundColor: Colors.deepOrangeAccent,),
     body: Column(
         children: <Widget>[
           Container(
             child: Padding(
               padding: const EdgeInsets.all(12.0),
               child: TextField(
                 decoration: InputDecoration(hintText: 'Tape a City..'),
                 controller: cityEditingController,
                 onChanged: (String str){
                   setState((){
                     city=str;
                   });
                 },
                 onSubmitted: (String str){

                     Navigator.of(context).push(MaterialPageRoute(
                         builder: (context) => Weather(city)));
                     cityEditingController.text = "";

                 },
               ),
             ),
           ),
           Container(
             width: double.infinity,
             padding: EdgeInsets.all(10),
             child: ElevatedButton(

               onPressed: (){
                  if (city.trim().isNotEmpty) {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Weather(city)));
                    cityEditingController.text = "";
                  }
               },
               style: ElevatedButton.styleFrom(
                 backgroundColor: Colors.deepOrangeAccent,
                 padding: const EdgeInsets.symmetric(vertical: 14),
               ),
               child: const Text(
                 'Get Weather',
                 style: TextStyle(color: Colors.white, fontSize: 16),
               ),
             ),
           )
         ]
     ),

   );
  }

}