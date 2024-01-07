


import 'package:get/get_navigation/src/root/internacionalization.dart';
import 'package:get/get.dart';
import 'package:usage_of_getx/translation/en.dart';
import 'package:usage_of_getx/translation/uk.dart';

class Translat extends Translations {

  @override
  Map<String,Map<String,String>> get keys =>{
    'en':en,
    'uk':uk,
  };

}