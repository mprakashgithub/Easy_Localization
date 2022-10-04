// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>> load(String fullPath, Locale locale ) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> en = {
  "title": "Title",
  "message": "Hello, How are you?"
};
static const Map<String,dynamic> hi = {
  "title": "शीर्षक",
  "message": "नमस्ते! आप कैसे हैं?"
};
static const Map<String,dynamic> tr = {
  "title": "Başlık",
  "message": "Merhaba, Nasılsınız?"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"en": en, "hi": hi, "tr": tr};
}
