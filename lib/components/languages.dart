import 'package:get/get.dart';

class Languages extends Translations{
  @override
  Map<String, Map<String, String>> get keys => {
    'en' : {
     'header':'GetX language translate feature',
     'content': 'Please click Hindi to convert content to Hindi language and English to convert content to English language'
    },
    'hi' : {
      'header':'GetX भाषा अनुवाद सुविधा',
      'content': 'कृपया सामग्री को हिंदी भाषा में बदलने के लिए \'हिंदी\' पर क्लिक करें, और अंग्रेजी भाषा में बदलने के लिए \'अंग्रेजी\' पर क्लिक करें।'
    }
  };

}