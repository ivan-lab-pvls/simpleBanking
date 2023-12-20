import 'package:financial_helper_app/models/question_model.dart';

class CourseModel {
  final String name;
  final String text;
  final String image;
  final List<QuestionModel> test;
  int result;
  final int questionCount;

  CourseModel(
      {required this.name,
      required this.text,
      required this.image,
      required this.test,
      required this.questionCount,
      required this.result});
}
