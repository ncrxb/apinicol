import 'package:flutter/material.dart';

class BotonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 50.0,
          ),
          _contenidoText(),
          SizedBox(
            height: 50.0,
          ),
          _tarjeta(),
          SizedBox(
            height: 50.0,
          ),
          _ImgFondo()
        ],
      ),
    );
  }
}

Widget _contenidoText() {
  return Positioned(
    child: Container(
      child: Center(
        child: Column(
          children: [
            Text('¿Estas listo para comenzar a estudiar?',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    ),
  );
}

class _ImgFondo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _mediaQuery = MediaQuery.of(context).size;
    return Positioned(
      bottom: _mediaQuery.width * 0.03,
      left: _mediaQuery.width * 0.08,
      child: Container(
          child: Image.network(
        'https://i.pinimg.com/originals/ec/c7/b5/ecc7b5907863388547fad7181eb80d3c.gif',
        fit: BoxFit.cover,
        height: _mediaQuery.height * 0.30,
      )),
    );
  }
}

class _tarjeta extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>Navigator.pushNamed(context,'/categoria'),
      child: Container(
          height: 100.0,
          width: 500.0,
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(60.0)),
            color: Colors.amber[200],
            child: Container(
              margin: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 14.0,
                  ),
                  Text('Comencemos!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          )),
    );
  }
}
