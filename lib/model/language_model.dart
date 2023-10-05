// ignore: camel_case_types
class languageModel {
  late int id;
  late String languagename;
  languageModel({required this.id, required this.languagename});
  
}
List<languageModel> language = [
    languageModel(id: 1, languagename: 'ភាសាខ្មែរ'),
    languageModel(id: 2, languagename: 'English')
  ];
