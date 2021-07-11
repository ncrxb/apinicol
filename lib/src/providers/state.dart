
import 'package:apinicol/src/models/trivia_models.dart';
import 'package:apinicol/src/providers/trivia_provider.dart';

import 'package:get/get.dart';

class TriviaState extends GetxController {
  List<TriviaModel> trivia = [];
  final triviaProvider = TriviaProvider();

  Future<void> obtenerTrivia() async{
    trivia.addAll(await triviaProvider.obtenerTrivia());
    update();
  }
}