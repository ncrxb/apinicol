import 'package:apinicol/src/models/trivia_models.dart';
import 'package:apinicol/src/providers/state.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State {
  @override
  void initState() {
    final triviaState = Get.put(TriviaState());
    triviaState.obtenerTrivia();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Seleccione una categoria',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold)),
            centerTitle: true,
            elevation: 0.0,
            backgroundColor: Colors.amber),
        body: SafeArea(
          child: Stack(
            children: [
  
              GetBuilder<TriviaState>(
                builder: (TriviaState triviaState) {
                  return GridView.builder(
                      itemCount: triviaState.trivia.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 1.0,
                          crossAxisSpacing: 5.0),
                      itemBuilder: (BuildContext context, int i) {
                        final _trivia = triviaState.trivia[i];
                        return GestureDetector(
                          onTap: ()=>Navigator.pushNamed(context,'/pregunta', arguments: _trivia ),
                          child: Container(
                            child: Stack(
                              children: [
                                _tarjeta(_trivia),
                                _SpriteTrivia(_trivia),
                                
                              ],
                            ),
                          ),
                        );
                      });
                },
              )
      
            ],
          ),
        ));
  }
}



class _SpriteTrivia extends StatelessWidget {
  final TriviaModel _trivia;
  _SpriteTrivia(this._trivia);
  @override
  Widget build(BuildContext context) {
    return Positioned(
        height: 110,
          
          bottom: 10,
          left: 2,
          right: 2,
         child: Container(
          child: FadeInImage(
            placeholder: NetworkImage('https://www.mactraveldesign.com/img/loading.gif'),
            image: NetworkImage('https://oposiciones.com/es/wp-content/uploads/2014/04/Case-Study.png')),
         ),
    );
  }

}

class _tarjeta extends StatelessWidget{
  final TriviaModel _trivia;
  _tarjeta(this._trivia);
 @override
  Widget build(BuildContext context) {
    return  Container(
                           height:250.0,
                           width: double.infinity,
                           child: Card(
                             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(60.0)),
                             color: Colors.amber[200],
                              child: Container(
                                 margin: EdgeInsets.all(20.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [

                                    //agregarimagendecategoria
                                    Text(_trivia.category,overflow: TextOverflow.ellipsis,  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
                                    // Row(
                                    //   children: _trivia.category!.map((Category) {
                                    //     return Text('category');
                                    //   }).toList(),
                                    // )
                                  ],
                                ),
                              ) ,
                           )
                           );
  }
}





