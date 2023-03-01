import '../models/quiz.dart';

List<dynamic> transformAnswers(Answers? answers) {
  if (answers == null) {
    return [];
  }
  List<Map<String, dynamic>?> list = answers.toJson().entries.map((e) {
    if (e.value != null) {
      return {'value': e.value, 'key': e.key};
    }
  }).toList();
  list.removeWhere((element) => element == null);
  return list;
}
