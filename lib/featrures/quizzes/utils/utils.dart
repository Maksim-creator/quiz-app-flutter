import '../widgets/Quiz.dart';

List<dynamic> transformAnswers(dynamic answers) {
  if (answers == null) {
    return [];
  }
  List<dynamic> list = answers.toJson().entries.map((e) {
    if (e.value != null) {
      return {'value': e.value, 'key': e.key};
    }
  }).toList();
  list.removeWhere((element) => element == null);
  return list;
}

MultipleAnswers transformMultipleAnswers(
    List<String> correct, List<String> answered) {
  List<String> correctAnsweredCountList = [];

  for (var i = 0; i < correct.length; i++) {
    for (var j = 0; j < answered.length; j++) {
      if (correct[i] == answered[j]) {
        correctAnsweredCountList.add(answered[j]);
      }
    }
  }
  return MultipleAnswers(
      correctAnswersInPerc:
          (correctAnsweredCountList.length * 100) / correct.length,
      answeredCorrect: correctAnsweredCountList.length);
}

enum QuestionTypes { common, multiple, truefalse }
