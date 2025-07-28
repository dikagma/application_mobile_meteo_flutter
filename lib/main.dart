import 'package:firstapp_drawer/weather-form.dart';
import 'package:flutter/material.dart';

import 'Quiz.dart';
import 'Weather.dart';

void main() => runApp(MaterialApp(
   home: MyApp(),
));

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First App'),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Text('Hello', style: TextStyle(fontSize: 30),
          textAlign: TextAlign.center,
        )
      ),
      drawer: Drawer(
        child: ListView(
          children:<Widget> [
            new DrawerHeader(
                child: Center(
                  child: CircleAvatar(
                    radius: 50,backgroundImage: NetworkImage('https://media.istockphoto.com/id/1352643432/fr/vectoriel/personnage-de-dessin-anim%C3%A9-businessman-les-gens-font-face-%C3%A0-des-profils-davatars-et.jpg?s=612x612&w=is&k=20&c=NYrxiXxCg-tovxSEWQeODNboIw2RdH7Ot58oLcfpDJE='),
                  ),
                ),
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [Colors.orange, Colors.white]),
              ),

            ),
            ListTile(
                title: Text(
                  'Quiz', style: TextStyle(fontSize: 18),
                ),
                trailing: Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Quiz(5)));
                }),
            ListTile(
                title: Text(
                  'Weather',style: TextStyle(fontSize: 18),
                ),
                trailing: Icon(Icons.arrow_right),

                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.push(context, MaterialPageRoute(builder: (context) => WeatherForm()));
                })
          ],
        ),
      )
    );


 }
  
  
  
}