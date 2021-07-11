import 'package:apinicol/src/models/trivia_models.dart';
import 'package:flutter/material.dart';

class PreguntaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TriviaModel trivia =
        ModalRoute.of(context)!.settings.arguments as TriviaModel;
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.amber,
        ),
        body: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            _ImgF(),
            _pregunta(),
            _dificultad(),
            _tipo(),
            _respuesta(),
          ],
        ));
  }
}

class _dificultad extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TriviaModel trivia =
        ModalRoute.of(context)!.settings.arguments as TriviaModel;
    return Stack(
     
      children: [
    
        Positioned(
          left: -25,
          top: 230,
          child: Container(
            width: 300,
            height: 70.0,
            decoration: BoxDecoration(
              color: Colors.red[400],
              borderRadius: BorderRadius.circular(50),
            ),
          ),
        ),
        Positioned(
          top: 250,
         left: 25,
          child: Container(
            child: Text('Difficulty: ${trivia.difficulty }',
                textAlign: TextAlign.center,
                style: TextStyle(
                 // fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 22.0,
                )),
          ),
        ),
      
      ],
    );
  }
}


class _ImgF extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
      Positioned(
              bottom: 65,
              child: Opacity(
                opacity: 0.1,
                child: Image.network(
                    'http://assets.stickpng.com/images/5a461410d099a2ad03f9c998.png'),
              ),
            ),
    ],
    );
    }}

class _pregunta extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TriviaModel trivia =
        ModalRoute.of(context)!.settings.arguments as TriviaModel;
    return Stack(
    
      children: [
        Positioned(
          top: 20,
          left: 50,
          child: Container(
            width: 500,
            height: 190.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(80),
              color: Colors.amber,
            ),
          ),
        ),
        Positioned(
          top: 65,
          right: 10,
          child: Container(
            width: 300,
            height: 150.0,
            child: Text( trivia.question,
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold)),
          ),
        ),
      ],
    );
  }
}

class _tipo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TriviaModel trivia =
        ModalRoute.of(context)!.settings.arguments as TriviaModel;
    return Stack(
      children: [
        Positioned(
          left: -25,
          top: 310,
          child: Container(
            width: 300,
            height: 70.0,
            decoration: BoxDecoration(
              color: Colors.cyan[200],
              borderRadius: BorderRadius.circular(50),
            ),
          ),
        ),
        
         Positioned(
          top: 330,
         left: 25,
          child: Container(
            child: Text('Type: ${trivia.type }',
                textAlign: TextAlign.center,
                style: TextStyle(
                  //fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 22.0,
                )),
          ),
        ),
       
      ],
    );
  }
}

class _respuesta extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TriviaModel trivia =
        ModalRoute.of(context)!.settings.arguments as TriviaModel;
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Positioned(
          bottom: 155,
          right: 20,
          child: Container(
            width: 380,
            height: 200.0,
            decoration: BoxDecoration(
              color: Colors.green[200],
              borderRadius: BorderRadius.circular(80),
            ),
      
          ),
        ),
        Positioned(
          bottom: 260,
          child: Container(
            child: Text(trivia.correctAnswer,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                   fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                )),
          ),
        ),
         Positioned(
              bottom: 15,
              left: 10,
                child:
            Container(
              width: 180,
              child: FadeInImage(
              placeholder: NetworkImage('https://www.mactraveldesign.com/img/loading.gif'),
              image: NetworkImage('http://31.media.tumblr.com/tumblr_m9hkqpVbXI1rdkk18o1_500.gif', )
              ),
            )
            ),
                    

           Positioned(
          bottom: 20,
          right: 15,
          child: Container(
            height: 100,
            width: 200,
            child: Text('You are ready for your exam!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30.0,
                )),
          ),
        ),
      ],
    );
  }
}


