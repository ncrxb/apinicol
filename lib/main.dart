import 'package:apinicol/src/pages/boton.dart';
import 'package:apinicol/src/pages/home.dart';
import 'package:apinicol/src/pages/pregunta.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Api NG',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/':(_)=>BotonPage(),
        '/categoria':(_)=>HomePage(),
        '/pregunta':(_)=>PreguntaPage()
      },
    
    );
  }
}
