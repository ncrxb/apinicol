import 'package:apinicol/src/models/trivia_models.dart';
import 'package:dio/dio.dart';

class TriviaProvider{
  final _url = 'https://opentdb.com/api.php?amount=20';
  final _http = Dio();


  Future<List<TriviaModel>> obtenerTrivia()async{
  final response = await _http.get(_url);
  List<dynamic> data = response.data['results'];
  return data.map((trivia) => TriviaModel.fromMapJson(trivia) ).toList();
  }

}