

import 'dart:io';

import 'package:path_provider/path_provider.dart';

Future<File> get _localFile async {
  Directory directory = await getApplicationDocumentsDirectory();
  String path = directory.path;
  return File('$path/context.txt');
}

Future<String> getFileStr() async {
  try {
    File file = await _localFile;
    String str = await file.readAsString();
    return str;
  } catch(e) {
    return "";
  }
}

Future setFileStr(String str) async {
  File file = await _localFile;
  return file.writeAsString(str);
}