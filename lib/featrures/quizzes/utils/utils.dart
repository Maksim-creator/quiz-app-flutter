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
