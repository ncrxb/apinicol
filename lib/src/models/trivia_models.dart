import 'package:apinicol/const/colores.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


 class TriviaModel{
  String  category;
  String ? type;
  String ? difficulty;
  String  question;
  String  correctAnswer;

  TriviaModel ({
    required this.category,
    this.type,
    this.difficulty,
    required this.question,
    required this.correctAnswer,

  });

  factory TriviaModel.fromMapJson(Map<String,dynamic> trivia) =>
    TriviaModel(
      category: trivia['category'],
      type: trivia['type'],
      difficulty: trivia['difficulty'],
      question: trivia['question'],
      correctAnswer: trivia['correct_answer']

    );

}